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
- Open your project folder in VSCode
- Add submodule: `git add submodule https://github.com/bl2404/esp32-dev-container-template.git`
- Add symlink to .devcontainer folder: `ln -s esp32-dev-container-template/.devcontainer/ .devcontainer`
- Add create .vscode folder: `mkdir .vscode -p`
- Add symlink to .vscode/c_cpp_properties.json: `ln -s esp32-dev-container-template/.vscode/c_cpp_properties.json .vscode/c_cpp_properties.json` 
- Via command pallette reopen your project folder in container: `> Dev Containers: Open folder in container`

Alternatively, .devconatainer and .vscode can be simply copied to your project folder. 
There are no `tasks.json`, `launch.json` configured. build, flashing is done through terminal window using `idf.py` commands described above.

## Other useful info

ESP32-C3 PINOUT SEEDUINO XIAO

```
-----USB-----
|2        5V|
|3       GND|
|4      3.3V|
   (...)
------------
```
