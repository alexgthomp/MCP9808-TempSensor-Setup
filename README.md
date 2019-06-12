# MCP9808-TempSensor-Setup
This is a simple project that configures a raspberry-pi to continually log the temperature every second.
This project is based on the instructions from here: https://learn.adafruit.com/mcp9808-temperature-sensor-python-library/overview
## Steps
* Enable I2C
  * sudo raspi-config
  * Select 5 Interfacing Options > P5 I2C > Enable
* (optional) Change paths to desired paths in all files
* run tempSensorSetup.sh
