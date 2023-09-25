#!/bin/bash

source ~/anaconda3/etc/profile.d/conda.sh
conda activate sd

# Install stable diffusion
sudo apt install wget git python3 python3-venv libgl1 libglib2.0-0
wget -q https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh

mv webui.sh ~; cd ~
source webui.sh

# Install Counterfeit V2.5
echo "Downloading CounterfeitV2.5 model weights and VAE..."
cd stable-diffusion-webui
wget -O models/Stable-diffusion/Counterfeit-V2.5.safetensors https://huggingface.co/gsdf/Counterfeit-V2.5/resolve/main/Counterfeit-V2.5.safetensors
wget -O models/VAE/Counterfeit-V2.5.vae.pt https://huggingface.co/gsdf/Counterfeit-V2.5/resolve/main/Counterfeit-V2.5.vae.pt
wget -O embeddings/EasyNegative.safetensors https://huggingface.co/datasets/gsdf/EasyNegative/blob/main/EasyNegative.safetensors
echo "Stable diffusion setup successful! Make sure to set COMMANDLINE_ARGS'--share --xformers 
    --theme dark
    --vae-path=/home/ubuntu/stable-diffusion-webui/models/VAE/Counterfeit-V2.5.vae.pt
    --no-half-vae' in webui-user.sh before launching"
