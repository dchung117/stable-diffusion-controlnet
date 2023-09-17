#!/bin/bash

source ~/anaconda3/etc/profile.d/conda.sh
conda activate stable-diffusion

# Install stable diffusion
sudo apt install wget git python3 python3-venv libgl1 libglib2.0-0
wget -q https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh

mv webui.sh ~; cd ~
source webui.sh

echo "Stable diffusion setup successful! Make sure to set COMMANDLINE_ARGS'--share --xformers 
    --theme dark
    --vae-path=/home/ubuntu/stable-diffusion-webui/models/VAE/Counterfeit-V2.5.vae.pt
    --no-half-vae' in webui-user.sh before launching"
