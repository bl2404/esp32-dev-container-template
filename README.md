# esp32-dev-container-template
Template containing all dependencies required for esp32 development


## Simple Terminal + Vim setup

- Clone this repo: `git clone https://github.com/bl2404/esp32-dev-container-template.git`
- Build the container: `docker build --build-arg IDF_TARGET=esp32s3 -t esp32s3 .` (keep in mind esp32 version can be e.g. esp32c3)
- Navigate to your project folder
- Start container interactively: `docker run -it --privileged -v ${PWD}:/home/esp/project esp32s3`
- Run: `idf.py set-target esp32c3` note: target will be different if device is different
- Run: `idf.py build`
- Run `idf.py monitor` to see what is the port of the device. Should be e.g.: `Serial port /dev/ttyACM0:` To exit monitor: `ctrl+]`
- Run `idf.py -p /dev/ttyACM0 flash`
- Run `idf.py monitor` again to see the output of the program

Most commonly used idf.py commands are added to bash history so no retyping is required.


## VSCode dev container
- Navigate to your project folder using command line
- Add submodule: `git add submodule https://github.com/bl2404/esp32-dev-container-template.git` or simply git clone if project is not a repository
- Open vscode
- File -> Add Folder to Workspace -> Select dev container

There are no `tasks.json`, `launch.json` configured. build, flashing is done through terminal window using `idf.py` commands described above.  

## Other useful info

ESP32-C3 PINOUT SEEDUINO XIAO

  USB<br>
2.....5V<br>
3.....GND<br>
4.....3.3V<br>
