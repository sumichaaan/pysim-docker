FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y \
        git \
        libccid \
        libpcsclite-dev \
        pcscd \
        pcsc-tools \
        python-pip \
        python \
        python-dev \
        python-pyscard \
        python-serial \
        swig && \
    apt-get clean && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir pyscard pytlv pyYAML

WORKDIR /root
RUN git clone -b master git://git.osmocom.org/pysim && \
    git clone -b master git://git.sysmocom.de/sysmo-usim-tool && \
    ln -s /root/sysmo-usim-tool/sysmo-usim-tool.sjs1.py /bin/getsim && \
    ln -s /root/pysim/pySim-prog.py /bin/writesim

ENTRYPOINT ["pcscd", "-f"]
