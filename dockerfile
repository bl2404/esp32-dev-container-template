FROM debian:latest

RUN apt-get update
RUN apt-get install git vim wget flex bison gperf python3 python3-pip python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0 -y apt-transport-https
RUN git clone https://github.com/espressif/esp-idf.git
RUN ./esp-idf/install.sh esp32c3
ENV IDF_PATH=/esp-idf
ENV IDF_PATH_FORCE=1
RUN echo ". ./esp-idf/export.sh" >> ./root/.bashrc
RUN . ./esp-idf/export.sh && \
    cd ./esp-idf/examples/get-started/hello_world/ && \
    idf.py set-target esp32c3 && \
    idf.py build
CMD ["/bin/bash"]
