aux_source_directory (. SRC_LIST)

message(${SRC_LIST})

#for example:
#set(OpenCV_DIR /xxxxxx/opencv/opencv/release)
#set(Seeta_Detect_LIBS /xxx/SeetaFaceEngine/FaceIdentification/libseeta_facedet_lib.so)
#set(Seeta_Alians_LIBS /xxx/SeetaFaceEngine/FaceIdentification/libseeta_fa_lib.so)
#link_directories(${PROJECT_BINARY_DIR}) #添加lib
#link_directories("/home/easyroid/Project/SeetaFaceEngine/FaceIdentification/include")
#adding external libraries was done!
find_package(OpenCV REQUIRED)

enable_testing ()
foreach (f ${SRC_LIST})
  string(REGEX REPLACE "[.]cpp" ".bin" BIN ${f})
  add_executable(${BIN} ${f})
  target_link_libraries(${BIN} viplnet ${OpenCV_LIBS})
  target_link_libraries(${BIN} viplnet ${Seeta_Detect_LIBS})
  target_link_libraries(${BIN} viplnet ${Seeta_Alians_LIBS})
endforeach ()

#WARNING!!#
#you should copy the two libs from compiled modules (FaceDetect and FaceAlignment)
#to above path.
