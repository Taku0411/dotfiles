wget https://www.vtk.org/files/release/9.1/VTK-9.1.0.tar.gz
tar -xvf VTK-9.1.0.tar.gz
rm VTK-9.1.0.tar.gz
cd VTK-9.1.0
cmake -B build \
-D CMAKE_INSTALL_PREFIX=~/.local/ \
-D CMAKE_BUILD_TYPE:STRING=“Release”\
-D VTK_WRAP_PYTHON:BOOL=OFF \
-D VTK_GROUP_ENABLE_Imaging=NO \
-D VTK_GROUP_ENABLE_MPI=NO \
-D VTK_GROUP_ENABLE_Qt=NO \
-D VTK_GROUP_ENABLE_StandAlone=NO \
-D VTK_GROUP_ENABLE_Views=NO \
-D VTK_GROUP_ENABLE_Web=NO \
-D VTK_MODULE_ENABLE_VTK_CommonCore=YES \
-D VTK_MODULE_ENABLE_VTK_CommonExecutionModel=YES \
-D VTK_MODULE_ENABLE_VTK_CommonMath=YES \
-D VTK_MODULE_ENABLE_VTK_CommonMisc=YES \
-D VTK_MODULE_ENABLE_VTK_CommonSystem=YES \
-D VTK_MODULE_ENABLE_VTK_CommonTransforms=YES \
-D VTK_MODULE_ENABLE_VTK_IOCore=YES \
-D VTK_MODULE_ENABLE_VTK_IOLegacy=YES \
-D VTK_MODULE_ENABLE_VTK_IOParallelXML=NO \
-D VTK_MODULE_ENABLE_VTK_IOXML=YES \
-D VTK_MODULE_ENABLE_VTK_IOXMLParser=YES \
-D VTK_MODULE_ENABLE_VTK_ParallelCore=NO \

cmake --build build --parallel 6
cmake --install build --prefix ~/.local
cd ../
rm -rf VTK-9.1.0
