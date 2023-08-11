#!/usr/bin/env python

# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.

"""
This module provides an NPC agent to control the ego vehicle
"""

from __future__ import print_function
import os
from os.path import exists
import carla
from agents.navigation.basic_agent import BasicAgent
from srunner.scenariomanager.carla_data_provider import CarlaDataProvider

from leaderboard.autoagents.autonomous_agent import AutonomousAgent, Track

def get_entry_point():
    return 'NpcAgent'

driver_file_path = (os.getenv('CHECKPOINT_ENDPOINT').replace(".json","") + "_jason_driver.csv")

class NpcAgent(AutonomousAgent):

    """
    NPC autonomous agent to control the ego vehicle
    """

    _agent = None
    _route_assigned = False

    def setup(self, path_to_conf_file):
        """
        Setup the agent parameters
        """
        self.track = Track.SENSORS

        self._route_assigned = False
        self._agent = None

    def sensors(self):
        """
        Define the sensor suite required by the agent

        :return: a list containing the required sensors in the following format:

        [
            {'type': 'sensor.camera.rgb', 'x': 0.7, 'y': -0.4, 'z': 1.60, 'roll': 0.0, 'pitch': 0.0, 'yaw': 0.0,
                      'width': 300, 'height': 200, 'fov': 100, 'id': 'Left'},

            {'type': 'sensor.camera.rgb', 'x': 0.7, 'y': 0.4, 'z': 1.60, 'roll': 0.0, 'pitch': 0.0, 'yaw': 0.0,
                      'width': 300, 'height': 200, 'fov': 100, 'id': 'Right'},

            {'type': 'sensor.lidar.ray_cast', 'x': 0.7, 'y': 0.0, 'z': 1.60, 'yaw': 0.0, 'pitch': 0.0, 'roll': 0.0,
             'id': 'LIDAR'}
        ]
        """

        sensors = [
            {'type': 'sensor.camera.rgb', 'x': 0.7, 'y': -0.4, 'z': 1.60, 'roll': 0.0, 'pitch': 0.0, 'yaw': 0.0,
             'width': 300, 'height': 200, 'fov': 100, 'id': 'Left'},
        ]

        return sensors

    def run_step(self, input_data, timestamp):
        """
        Execute one step of navigation.
        """
        control = carla.VehicleControl()
        control.steer = 0.0
        control.throttle = 0.0
        control.brake = 0.0
        control.hand_brake = False

        if not self._agent:
            hero_actor = None
            for actor in CarlaDataProvider.get_world().get_actors():
                if 'role_name' in actor.attributes and actor.attributes['role_name'] == 'hero':
                    hero_actor = actor
                    break
            if hero_actor:
                self._agent = BasicAgent(hero_actor)

            return control

        if not self._route_assigned:
            if self._global_plan:
                plan = []

                prev = None
                for transform, _ in self._global_plan_world_coord:
                    wp = CarlaDataProvider.get_map().get_waypoint(transform.location)
                    if  prev:
                        route_segment = self._agent._trace_route(prev, wp)
                        plan.extend(route_segment)

                    prev = wp

                #loc = plan[-1][0].transform.location
                #self._agent.set_destination([loc.x, loc.y, loc.z])
                self._agent._local_planner.set_global_plan(plan)  # pylint: disable=protected-access
                self._route_assigned = True

        else:
            control = self._agent.run_step()

        # print(control)
        ml_control_game_time = "00"#self._vehicle.get_world().get_snapshot().timestamp.elapsed_seconds
        self.save_driver_control(["0", ml_control_game_time, "NPC", control, ""], driver_file_path)
        return control
    

    def save_driver_control(self, driver_data, file_path):
        if not exists(file_path):
            with open(file_path, 'w') as driver_file:
                driver_file.write("frame;time;driver;control;condition\n")

        with open(file_path, 'a') as driver_file:
            driver_file.write("%s;%s;%s;%s;%s\n" % (str(driver_data[0]), driver_data[1], str(driver_data[2]), str(driver_data[3]), str(driver_data[4])))
