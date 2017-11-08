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

### 项目介绍
该项目是基于Seeta项目的修改版本，在原项目的基础上，针对linux下的编译错误进行修改，主要修改内容：

* 1.修改头文件，修复原项目在linux上编译报错情况
* 2.增加一个新的demo cpp源文件
* 3.编写可自动化部署的shell脚本等

#### 部署方法
编译出对应的so库文件，依据例子程序中的代码进行调用。
编译例子程序时，记得so库文件依赖，否则无法运行，会提示出错。
FaceIdentification 子项目中的例子程序依赖其他两个项目生成的so库文件。

### end
