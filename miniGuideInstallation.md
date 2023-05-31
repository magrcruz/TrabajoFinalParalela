# Pasos para instalar ANACIN-X
## Conda

```
conda --version
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
conda --version
```

## Spack
```
git clone -c feature.manyFiles=true https://github.com/spack/spack.git
cd spack/bin
./spack install zlib
```
- Otros
```
sudo spack config update modules
spack install boost@1.70.0%gcc@9.4.0
export PATH="~/spack/bin:$PATH"
nano ~/.bashrc
source ~/.bashrc
spack versions
```
## Claves SSH en GitHub

- Verifica que este la clave
```
ls ~/.ssh/id_*.pub
```
- Genera la clave
```
ssh-keygen -t ed25519 -C "maria.cruz@ucsp.edu.pe"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```
- Copia al portapapeles
```
cat ~/.ssh/id_ed25519.pub | xclip -selection clipboard
```
- En GITHUB
 - "Settings" (Configuración)
 - "New SSH key"
 - Llenar y pegar la clave

## MPI
```
mpiexec --version
```
- mpiexec (OpenRTE) 4.0.3 es openmpi
## Compilador de c
gcc
- Eso instala make
```
sudo apt update
sudo apt install build-essential
```

## ANACIN-X
```
git clone
. setup_deps.sh
. setup.sh -c
```
https://github.com/TauferLab/ANACIN-X#installation

## Dependencias
https://github.com/TauferLab/ANACIN-X/wiki/Dependencies
C Compiler (ex. GCC)
boost
cmake
igraph
nlohmann-json
libunwind
spdlog
ruptures
pyelftools
pkg-config
pkgconfig
eigen
grakel
python-igraph
mpi4py
graphkernels
ipyfilechooser
PnMPI
sst-dumpi
Pluto
dumpi_to_graph
CSMPI