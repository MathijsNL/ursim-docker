# Universal Simulator Docker
This repository has the following UR Simulators included:
- CB3 3.15.8 (Sep 05, 2022)
- E-Series 5.13.0 (Nov 28, 2022)

The simulators are tested with the following configuration:
- Windows 11
- WSL2 Ubuntu 22([https://learn.microsoft.com/en-us/windows/wsl/tutorials/gui-apps](GUI))
- Docker (without Docker Desktop)

With minimal effort this can probably be made to run with other setups.

## Safety
Universal Simulator needs some extra permissions:
- sys_nice
- ulimit rtprio=99
- ulimit memlock=1024000

This will run the simulator with a functional controller without having to run in --privileged mode.

# Usage
Build the docker file(s) using the following command(s):
```
docker build -t ursim_cb3:latest -f Dockerfile.CB3 .
docker build -t ursim_e:latest -f Dockerfile.E .
```

Now you can run the simulator of your choice by running either ./run_cb3.sh, ./run_e.sh.

# Missing features
Things known or not sure to be working are:
- GUI input fields disappear when you click them
- Network functionality (and no port mappings yet)
- No volume is mounted to the host, so all scripts will be lost when you rebuild or destroy the container

# Disclaimer
I am not affiliated with Universal Robots in any way, all rights to the simulator belong to them. You can visit the official website at:
[universal-robots.com](https://www.universal-robots.com/)
