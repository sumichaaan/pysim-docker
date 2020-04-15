# PySIM Docker
This is dockerized PySIM and Sysmo-Usim-Tool which are uSIM card reader/writer written in python.

Note: Original source code is on the following links.
* [pysim] git://git.osmocom.org/pysim
* [sysmo-usim-tool] git clone -b master git://git.sysmocom.de/sysmo-usim-tool

## How to build
```
git clone https://github.com/sumichaaan/pysim-docker
docker build -t local/pysim .
```

## How to use (example)
```
docker exec -ti [CONTAINER_ID] getsim --adm1=[ADMIN_NUMBER] -iko
docker exec -ti [CONTAINER_ID] writesim --help
```
