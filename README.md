# esp32-dev-container-template
Template containing all dependencies required for esp32 development

- build the container: `docker build -t esp .`Note: dockerfile is hardcoded for esp32c3 version. Modify it if version is different.
- start container interactively: `docker run -it --privileged -v ./projects:/projects esp`
- navigate to your project folder. E.g. `cd /projects/i2c/`
- run: `idf.py set-target esp32c3` note: target will be different if device is different
- run: `idf.py build`
- run `idf.py monitor` to see what is the port of the device. Should be e.g.: `Serial port /dev/ttyACM0:` To exit monitor: `ctrl+]`
- run `idf.py -p /dev/ttyACM0 flash`
- run `idf.py monitor` again to see the output of the program
