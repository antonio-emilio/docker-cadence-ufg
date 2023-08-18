# Docker Cadence - UFG
This repository contains all instructions to deploy your docker to run the XCELIUM using the UFG license.

## 1. Installing and configuring docker
```
sudo apt update
sudo apt-get install  curl apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
xhost +local:docker
```

## 2. Clone this repository and access the folder
```
git clone https://github.com/antonio-emilio/docker-cadence-ufg.git
cd dockerfiles/docker-cadence-ufg
```
## 3. Build your dockerfile image
```
sudo docker build -t centos-cadence-ufg .
```
## 4. Run!
```
sudo docker run -it --name centos-cadence-ufg -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix centos-cadence-ufg
```

## 5. If you want to run later again (after closing)!
```
xhost +local:docker
sudo docker exec -it centos-cadence-ufg /bin/bash
```
## 6. After opening the container...

If you want to open the XCELIUM, you need to type this command:

```
xrun driver.v driver_test.v -gui -access +rwc
```

Where driver.v is the module that you want to test and driver_test.v is the testbench file. 
If you don't want to open the GUI, you can just simply:

```
xrun driver.v driver_test.v
```



