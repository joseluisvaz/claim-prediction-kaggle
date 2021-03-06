#!/bin/bash
# CREATED BY JOSE VAZQUEZ
# PROJECT SETUP FOR USE IN GOOGLE CLOUD PLATFORM INSTANCE
# Design to run at home
wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh

source ~/.bashrc

rm -rf Anaconda3-5.0.1-Linux-x86_64.sh

conda install -c conda-forge xgboost 

jupyter notebook --generate-config

echo "c = get_config()" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip" = '*' >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.open_browser" = False >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.port = 5000" >> ~/.jupyter/jupyter_notebook_config.py

#DOWNLOAD DATA
wget https://www.dropbox.com/s/7yf6ll0kgnm456k/train.csv.zip
wget https://www.dropbox.com/s/mmrqjore7vkxy0o/test.csv.zip

unzip train.csv.zip
unzip test.csv.zip

rm -rf train.csv.zip
rm -rf test.csv.zip
