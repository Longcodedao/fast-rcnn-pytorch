#!/bin/bash

mkdir -p datasets
cd datasets

# Download Pascal VOC 2007 dataset
wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtrainval_06-Nov-2007.tar
wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtest_06-Nov-2007.tar

# Extract the downloaded files
tar -xf VOCtrainval_06-Nov-2007.tar
tar -xf VOCtest_06-Nov-2007.tar

# Clean up by removing the tar files
rm VOCtrainval_06-Nov-2007.tar
rm VOCtest_06-Nov-2007.tar

echo "Pascal VOC 2007 dataset downloaded and extracted successfully."

echo "Setting up for OpenCV"

sudo apt-get install libgl1-mesa-glx
pip install opencv-python