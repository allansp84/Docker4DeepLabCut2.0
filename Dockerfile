# https://github.com/DeepLabCut/Docker4DeepLabCut2.0
FROM python:3
RUN pip install imageio
# install ffmpeg from imageio.
RUN pip install imageio-ffmpeg


FROM bethgelab/deeplearning:cuda10.0-cudnn7
RUN add-apt-repository ppa:deadsnakes/ppa #ADDS NEW REPO
#RUN add-apt-repository --remove ppa:jonathonf/python-3.6 #REMOVES BROKEN REPO #removed dec 2020
#RUN apt-get update && apt-get -y install ffmpeg


RUN pip install tensorflow-gpu==1.13.1
#see issue #25:
RUN pip install --upgrade pip 

RUN pip install ruamel_yaml
RUN pip3 install deeplabcut
RUN pip install ipywidgets
RUN pip3 install ipywidgets
RUN pip3 install seaborn

RUN apt-get update && apt-get install -y \
        git curl libsdl2-mixer-2.0-0 libsdl2-image-2.0-0 libsdl2-2.0-0 python-wxgtk3.0 && \
    apt-get autoclean && apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ~/.cache

RUN pip3 install -U -f https://extras.wxpython.org/wxPython4/extras/linux/gtk3/ubuntu-16.04 wxPython

