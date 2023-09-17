#!/bin/bash

source ~/anaconda3/etc/profile.d/conda.sh
conda activate stable-diffusion

# Install stable diffusion
sudo apt install wget git python3 python3-venv libgl1 libglib2.0-0
wget -q https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh

mv webui.sh ~; cd ~
source webui.sh