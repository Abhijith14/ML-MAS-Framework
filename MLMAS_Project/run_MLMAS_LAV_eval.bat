@echo off
setlocal

call MLMAS_Framework\config_LAV.bat

set CARLA_ROOT=CARLA_0.9.10.1
set CARLA_SERVER=%CARLA_ROOT%\CarlaUE4.exe
set PYTHONPATH=%PYTHONPATH%;%CARLA_ROOT%\PythonAPI
set PYTHONPATH=%PYTHONPATH%;%CARLA_ROOT%\PythonAPI\carla
set PYTHONPATH=%PYTHONPATH%;%CARLA_ROOT%\PythonAPI\carla\dist\carla-0.9.10-py3.7-win-amd64.egg
set PYTHONPATH=%PYTHONPATH%;leaderboard
set PYTHONPATH=%PYTHONPATH%;MLMAS_Framework\team_code
set PYTHONPATH=%PYTHONPATH%;scenario_runner

set LEADERBOARD_ROOT=leaderboard
set CHALLENGE_TRACK_CODENAME=SENSORS
set PORT=2000
set TM_PORT=8000
set DEBUG_CHALLENGE=0
set REPETITIONS=1

set TEAM_AGENT=MLMAS_Framework\team_code\main_orchestrator.py
set TEAM_AGENT_human=%LEADERBOARD_ROOT%\leaderboard\autoagents\human_agent.py
set TEAM_AGENT_npc=%LEADERBOARD_ROOT%\leaderboard\autoagents\npc_agent.py
set TEAM_AGENT_ml=ML_Models\LAV\team_code\lav_agent.py

@REM to run npc, set Curr_Agent to NPC_AGENT and run with main_orchestrator.
@REM set Curr_AGENT=%NPC_AGENT%
set Curr_AGENT=%ML_MODEL%

@REM comment the below line if you want to run the LAV.
@REM set TEAM_CONFIG=

set RESUME=True

if "%run_jason_agent%"=="true" (
  start MLMAS_Framework\JasonAgent\run_jason.bat
)


python %LEADERBOARD_ROOT%\leaderboard\leaderboard_evaluator.py ^
--scenarios=%SCENARIOS% ^
--routes=%ROUTES% ^
--repetitions=%REPETITIONS% ^
--track=%CHALLENGE_TRACK_CODENAME% ^
--checkpoint=%CHECKPOINT_ENDPOINT% ^
--agent=%TEAM_AGENT% ^
--agent-config=%TEAM_CONFIG% ^
--debug=%DEBUG_CHALLENGE% ^
--resume=%RESUME% ^
--port=%PORT% ^
--trafficManagerPort=%TM_PORT% ^
--record=%RECORD_PATH%


if "%run_jason_agent%"=="true" (
  call MLMAS_Framework\JasonAgent\stop_jason.bat
)
