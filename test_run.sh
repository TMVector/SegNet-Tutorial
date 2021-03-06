#!/usr/bin/env bash
if [ ! -e Example_Models/segnet_weights_driving_webdemo.caffemodel ]; then
  pushd Example_Models
  wget http://mi.eng.cam.ac.uk/~agk34/resources/SegNet/segnet_weights_driving_webdemo.caffemodel
  popd
fi
python Scripts/file_demo.py --model Example_Models/segnet_model_driving_webdemo.prototxt --weights Example_Models/segnet_weights_driving_webdemo.caffemodel --colours Scripts/camvid12.png --input CamVid/test/0001TP_008550.png
