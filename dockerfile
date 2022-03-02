FROM tensorflow/tensorflow:latest-gpu-jupyter
RUN apt-get update
RUN apt-get upgrade -y
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN python -m pip install -U matplotlib
RUN python -m pip install -U seaborn
RUN python -m pip install -U pandas
RUN python -m pip install -U tensorflow-io
RUN python -m pip install -U tensorflow-addons
RUN python -m pip install -U opencv-python
RUN python -m pip install -U scikit-learn
RUN python -m pip install -U scikit-image
RUN apt-get install libgl1-mesa-glx -y
