## SeetaFace Engine  

[![License](https://img.shields.io/badge/license-BSD-blue.svg)](LICENSE)

### Description

**SeetaFace Engine** is an open source C++ face recognition engine, which can run on CPU with no third-party dependence. It contains three key parts, i.e., **SeetaFace Detection**, **SeetaFace Alignment** and **SeetaFace Identification**, which are necessary and sufficient for building a real-world face recognition applicaiton system. 

### Documentation

* [SeetaFace Detection](./FaceDetection/README.md)
* [SeetaFace Alignment](./FaceAlignment/README.md)
* [SeetaFace Identification](./FaceIdentification/README.md)


### Modification description

Original Project Address:
<a>https://github.com/seetaface/SeetaFaceEngine</a><br>
Modified some files so that this project can be compiled by gcc.
Original Project had some files that coded by VS,so you could not compile on Linux.
And at the same time,I wrote a shell script that can automatic download and install OpenCV,because the FaceId.. module rely on OPENCV.
If you can not compile the project,you could run the script that named autoIns.sh

### end
