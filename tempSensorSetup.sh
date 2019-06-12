#!/bin/bash

sudo apt-get update
sudo apt-get install build-essential python-dev python-pip python-smbus git
sudo pip install RPi.GPIO
git clone https://github.com/adafruit/Adafruit_Python_MCP9808.git
cd Adafruit_Python_MCP9808
sudo python setup.py install
cd ..
mv tempSensor.service /lib/systemd/system/
sudo chmod 644 /lib/systemd/system/tempSensor.service
chmod +x /home/pi/runTempSensor.py
sudo systemctl daemon-reload
sudo systemctl enable tempSensor.service
sudo systemctl start tempSensor.service
