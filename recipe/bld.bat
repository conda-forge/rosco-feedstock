python setup.py develop

cmake -G "MinGW Makefiles" ^
    -D CMAKE_BUILD_TYPE=Release ^
    -D CMAKE_Fortran_FLAGS="-ffree-line-length-0" ^
    -D CMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
    -D CMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
    ROSCO
if errorlevel 1 exit 1

cmake --build ROSCO --config Release --target install
if errorlevel 1 exit 1
