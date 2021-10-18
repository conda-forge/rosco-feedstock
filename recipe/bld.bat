python setup.py install

cmake -G "MinGW Makefiles" ^
    -D CMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
    -D CMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
    ROSCO
if errorlevel 1 exit 1

cmake --build . --target install
if errorlevel 1 exit 1
