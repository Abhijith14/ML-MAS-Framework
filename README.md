<div align="center">
<h1 align="center">
<img src="https://raw.githubusercontent.com/Abhijith14/ML-MAS-Framework/master/assets/1.jpg" width="500" />
<br>ML-MAS-FRAMEWORK</h1>
<h3>Improving Self-Driving Performance using <a href="https://github.com/alshukairi/MLMAS-Framework-AAMAS23">ML-MAS Framework</a></h3>
<img src="https://img.shields.io/badge/Python-3776AB.svg?style&logo=Python&logoColor=white" alt="Python" />
<a href="http://jason-lang.github.io/jason/doc/" target="_blank"><img src="https://img.shields.io/badge/JASON-000000.svg?style&logo=JASON&logoColor=white" alt="JASON" /></a>
<img src="https://img.shields.io/badge/java-%23ED8B00.svg?style&logo=openjdk&logoColor=white" alt="java" />
<img src="https://img.shields.io/badge/carla-%23ED8B00.svg?style&logo=carla&logoColor=white" alt="carla" />
<br>
<img src="https://img.shields.io/github/license/Abhijith14/ML-MAS-Framework?style&color=5D6D7E" alt="GitHub license" />
<img src="https://img.shields.io/github/last-commit/Abhijith14/ML-MAS-Framework?style&color=5D6D7E" alt="git-last-commit" />
<img src="https://img.shields.io/github/commit-activity/m/Abhijith14/ML-MAS-Framework?style&color=5D6D7E" alt="GitHub commit activity" />
<img src="https://img.shields.io/github/languages/top/Abhijith14/ML-MAS-Framework?style&color=5D6D7E" alt="GitHub top language" />
</div>

---

## 📖 Table of Contents
- [📖 Table of Contents](#-table-of-contents)
- [📍 Overview](#-overview)
- [📦 Features](#-features)
- [🪧 Project Demo](#-project-demo)
- [📂 Repository Structure](#-repository-structure)
- [⚙️ Modules](#modules)
- [🚀 Getting Started](#-getting-started)
    - [🔧 Installation](#-installation)
    - [🤖 Running ML-MAS-Framework](#-running-ML-MAS-Framework)
    - [🧪 Results](#-results)
- [🤝 Contributing](#-contributing)
- [📄 License](#-license)
- [👏 Acknowledgments](#-acknowledgments)

---


## 📍 Overview
This project investigates a neuro-symbolic AI framework using ML and MAS, with the aim to enhance the driving capabilities of autonomous vehicles. The ML component enables the vehicle to learn patterns and behaviours from vast amounts of data, while the MAS component provides rational decision-making and adaptive behaviour in response to complex driving scenarios.

<img src="https://raw.githubusercontent.com/Abhijith14/ML-MAS-Framework/master/assets/2.gif" />

---

## 📦 Features

Previous approaches to autonomous driving have predominantly focused on purely ML-based solutions or rule-based systems. ML models, such as deep neural networks, have shown remarkable capabilities in perception tasks like object recognition and lane detection. However, they often lack explicit reasoning and interpretability, making them prone to uncertainty and limited adaptability in dynamic environments. On the otherhand, rule-based systems can provide rational behaviour but struggle tohandle the complexity and variability encountered in real-world driving scenarios.

By incorporating Neuro-symbolic AI with ML and MAS, this project takes a hybrid approach that combines the learning capabilities of ML models with the rational behaviour and adaptability of agent-based systems. This integration aims to overcome the limitations of purely ML or rule-based approaches by leveraging the strengths of both paradigms. The project strives to demonstrate that a balanced approach, combining learning-based models with rational decision-making agents, can yield superior results in autonomous driving.

The project builds upon the previous work of [Hilal Al Shukairi](https://github.com/alshukairi), a former MSc AI student, who developed the [ML-MAS framework](https://github.com/alshukairi/MLMAS-Framework-AAMAS23) and showcased improved driving scores.

---

## 🪧 Project Demo

<!-- ![Alt Text](assets/recording.mp4) -->

<video controls>
  <source src="https://raw.githubusercontent.com/Abhijith14/ML-MAS-Framework/master/assets/recording.mp4" type="video/mp4">
</video>

---

## 📂 Repository Structure

```sh
└── ML-MAS-Framework/
    ├── MLMAS_Project/
    │   ├── MLMAS_Framework/
    │   ├── ML_Models/
    │   ├── environment.yml
    │   ├── leaderboard/
    │   ├── results/
    │   ├── run_MLMAS_LAV_eval.bat
    │   └── scenario_runner/
    ├── PSEEB_Annex_A_Ethics_Checklist.pdf
    ├── Project Plan and Abstract.pdf
    ├── Project Report.pdf
    └── setup.bat
```


---

## ⚙️ Modules

<details open><summary>Core</summary>

| File   |Summary   | 
| --- |--- |
| [setup.bat](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/setup.bat) | The code is a batch script that sets up the project folder by downloading and extracting LAV model weights and CARLA 0.9.10.1 with additional maps. It creates the necessary directories and cleans up temporary files. |
| [run_MLMAS_LAV_eval.bat](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/run_MLMAS_LAV_eval.bat) | This script sets up the necessary environment variables and runs the MLMAS Framework for evaluating a developed agent in the CARLA simulation. It allows for running different types of agents (human, NPC, ML) and supports resuming and recording of the evaluation. |
| [environment.yml](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/environment.yml)               | The code contains a YAML file specifying the dependencies and packages required for the ML-MAS project. It includes packages for machine learning frameworks, image processing, data analysis, visualization, and more.                     

</details>

<details closed><summary>ML Model(LAV)</summary>

| File   |Summary   | 
| --- |--- | 
| [config.yaml](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/ML_Models/LAV/config.yaml)                 | The code contains various configurable parameters for training and running a machine learning model for a driving assist system. It includes settings for pre-trained models, data augmentation techniques, motion planning, feature augmentation, detection and segmentation weights, controller parameters, and model directories.
| [models](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/ML_Models/LAV/team_code/models)                                     | The code in the given path contains machine learning models implemented for the LAV (Language-Agnostic Virtual Assistant) project. It focuses on the core functionalities and aims to provide a concise summary of the models' implementation and usage.                                                                                                                                                                  |
| [lav_agent.py](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/ML_Models/LAV/team_code/lav_agent.py)                         | HTTPStatus Exception: 400                                                                                                                                                                                                                                                                                                                                                                                                 |
| [config.yaml](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/ML_Models/LAV/team_code/config.yaml)                           | The code's config.yaml file contains configuration settings for the MLMAS project's machine learning models, particularly for the LAV team. It defines various parameters and options required by the models to run effectively.                                                                                                                                                                                          |

</details>

<details closed><summary>BDI Bridge Python</summary>

| File   |Summary   | 
| --- |--- |
| [jason_carla_bridge.py](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/MLMAS_Framework/team_code/jason_carla_bridge.py)     | Exception: [Errno -2] Name or service not known                                                                                                                                                                                                                                                                                                                                                                           |
| [ml_mas_agent0.py](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/MLMAS_Framework/team_code/ml_mas_agent0.py)               | Exception: [Errno -2] Name or service not known                                                                                                                                                                                                                                                                                                                                                                           |

</details>

<details closed><summary>The Orchestrator</summary>

| File   |Summary   | 
| --- |--- |
| [main_orchestrator.py](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/MLMAS_Framework/team_code/main_orchestrator.py)       | Exception: [Errno -2] Name or service not known                                                                                                                                                                                                                                                                                                                                                                           |
| [base_agent.py](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/leaderboard/team_code/base_agent.py)                         | Exception: [Errno -2] Name or service not known                                                                                                                                                                                                                                                                                                                                                                           |
| [config_LAV.bat](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/MLMAS_Framework/config_LAV.bat) | This config file sets the core functionalities for the MLMAS Framework. It includes the configuration for the server, ML model, scenario routes, storing locations for results and records, and the option to run the Jason agent locally. |
| [stop_jason.bat](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/MLMAS_Framework/JasonAgent/stop_jason.bat) | The code in "stop_jason.bat" is used to forcefully terminate any running instances of the Java application.                                                                                                                                                         |
| [run_jason.bat](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/MLMAS_Framework/JasonAgent/run_jason.bat)   | Exception:                                                                                                                                                                                                                                                          |

</details>

<details closed><summary>BDI Bridge Java</summary>

| File   |Summary   | 
| --- |--- |
| [CarlaEnv.java](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/MLMAS_Framework/JasonAgent/carla_agents/src/java/carla_agents/CarlaEnv.java)             | The CarlaEnv class in the provided code is the environment for the Jason agent. It handles requests and actions by communicating with the Carla simulation through a socket connection. It initializes the necessary components, such as the JasonCarlaBridge and BeliefsHandler, and executes actions based on the received input. |
| [BeliefsHandler.java](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/MLMAS_Framework/JasonAgent/carla_agents/src/java/carla_agents/BeliefsHandler.java) | The BeliefsHandler class in the JasonAgent code receives sensor data and updates and manages the beliefs accordingly. This includes handling sensor data, adding and removing percepts, and activating Jason plans.                                                                                                                 |
| [JsonProcessing.java](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/MLMAS_Framework/JasonAgent/carla_agents/src/java/carla_agents/JsonProcessing.java) | The JsonProcessing class in the code provides functionalities to pack and unpack JSON messages. It includes methods for packing control and no action JSON objects, as well as reading JSON messages.                                                                                                                               |
| [carla_agents.mas2j](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/MLMAS_Framework/JasonAgent/carla_agents/carla_agents.mas2j)                         | The code defines a multi-agent system called "carla_agents" with a specific environment. It includes an agent called "carla_control" and specifies the source path for the AgentSpeak Language (ASL) code files.                                                                                                                    |
| [carla_control.asl](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/MLMAS_Framework/JasonAgent/carla_agents/src/asl/carla_control.asl)                                       | HTTPStatus Exception: 400  
| [PublicOut.java](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/MLMAS_Framework/JasonAgent/carla_agents/src/java/CarlaSocket/PublicOut.java)               | This code represents a class called PublicOut that handles messages from Jason (an agent-based programming language) to a server. It uses a queue to store the messages and a PrintWriter to send them to the server. The code runs in a separate thread and continuously checks for messages in the queue to send them to the server.                 |
| [PublicIn.java](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/MLMAS_Framework/JasonAgent/carla_agents/src/java/CarlaSocket/PublicIn.java)                 | The code provides a class called PublicIn, which handles messages from the server to Jason. It reads messages from the input stream and adds them to a queue. The class runs on a separate thread and can be stopped when needed.                                                                                                                      |
| [JasonCarlaBridge.java](https://github.com/Abhijith14/ML-MAS-Framework/blob/master/MLMAS_Project/MLMAS_Framework/JasonAgent/carla_agents/src/java/CarlaSocket/JasonCarlaBridge.java) | This code is a Java class called JasonCarlaBridge. It acts as a bridge between a Jason agent and a Carla server, handling communication between them. The class establishes a connection with the server, sends and receives messages, and manages separate threads for input and output. It also includes methods to stop and restart the connection. |

</details>

---

## 🚀 Getting Started

***Dependencies***

Please ensure you have the following dependencies installed on your system:

`CARLA 0.9.10.1 and its Additional Maps`

`LAV Model weights`

`Anaconda and Java installed`

### 🔧 Installation

1. Clone the ML-MAS-Framework repository:
```sh
git clone https://github.com/Abhijith14/ML-MAS-Framework
```

2. Change to the project directory:
```sh
cd ML-MAS-Framework
```

3. Install the dependencies:
```sh
setup.bat
```
This should setup both carla and lav model weights.

4. Setup the conda environment
```sh
cd MLMAS_Project
conda env create -f environment.yml
```


### 🤖 Running ML-MAS-Framework

```sh
cd *TO CARLA FODLER*
Carla.exe

cd ..
cd MLMAS_Project
run_MLMAS_LAV_eval.bat
```

### 🧪 Results
Recordings for each route can be found at:

```sh
└── ML-MAS-Framework/
    └── MLMAS_Project/
       └── results/
           └── records/
```
And inside results folder, the metrics for each route can also be found.

---

## 🤝 Contributing

Contributions are always welcome! Please follow these steps:
1. Fork the project repository. This creates a copy of the project on your account that you can modify without affecting the original project.
2. Clone the forked repository to your local machine using a Git client like Git or GitHub Desktop.
3. Create a new branch with a descriptive name (e.g., `new-feature-branch` or `bugfix-issue-123`).
```sh
git checkout -b new-feature-branch
```
4. Make changes to the project's codebase.
5. Commit your changes to your local branch with a clear commit message that explains the changes you've made.
```sh
git commit -m 'Implemented new feature.'
```
6. Push your changes to your forked repository on GitHub using the following command
```sh
git push origin new-feature-branch
```
7. Create a new pull request to the original project repository. In the pull request, describe the changes you've made and why they're necessary.
The project maintainers will review your changes and provide feedback or merge them into the master branch.

---

## 📄 License

This project is licensed under the `GPL-3.0` License. See the [GPL-3.0](LICENSE) file for additional info.

---

## 👏 Acknowledgments

I would like to express my deepest gratitude and appreciation to all those who have contributed to the successful completion of this project on integrating a Neuro-symbolic AI framework using Machine Learning (ML) and Multi-Agent Systems (MAS) for enhancing the driving capabilities of self-driving cars.

First and foremost, I would like to thank my project supervisor, [Dr. Rafael C. Cardoso](https://github.com/rafaelcaue), for his guidance, support, and invaluable insights throughout the duration of this project. His expertise and dedication have been instrumental in shaping the direction and scope of our work. 

I am immensely grateful to [Hilal Al Shukairi](https://github.com/alshukairi), the former MSc AI student, whose previous work on the ML-MAS framework laid the foundation for my project. His efforts and innovative ideas have significantly contributed to my understanding and implementation of Neuro-symbolic AI in autonomous driving.

I extend my thanks to the faculty and staff of University of Aberdeen, whose resources and facilities have provided me with a conducive environment for conducting my research. Their commitment to fostering academic excellence and pushing the boundaries of knowledge has been a constant source of motivation

This readme file is created by [eli64s/README-AI](https://github.com/eli64s/README-AI)

[↑ Return](#Top)

---
