@echo off

FOR /F %%A IN ('hostname') DO SET system=%%A
SET system=%system:~0,-1%

REM set build_dir="build_%system%/"

set build_dir=build/
IF "%system%"=="quartz" (
    set build_dir=./build_quartz
) ELSE IF "%system%"=="catalyst" (
    set build_dir=./build_catalyst
)

IF EXIST %build_dir% (
    rmdir /S /Q %build_dir%
)
mkdir %build_dir%
cd %build_dir%

SET CC=mpicc
SET CXX=mpicxx

cmake -D CMAKE_BUILD_TYPE=Debug .. && make -j
