FROM jupyter/scipy-notebook

WORKDIR /home/$NB_USER 

RUN pip install breadboard \
    && git clone https://github.com/ranchop/therpy.git \
    && cd therpy \
    && python setup.py build \
    && python setup.py install \
    && cd .. \
    && rm -rf therpy 
