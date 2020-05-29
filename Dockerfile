FROM telegraf:latest

RUN sed -i 's/main/main contrib non-free/g' /etc/apt/sources.list && \
    apt-get update && apt-get install -y --no-install-recommends ipmitool snmp snmp-mibs-downloader && \
    rm -rf /var/lib/apt/lists/* && \
    cd /usr/share/snmp/mibs && \
    curl -OL -s http://download2.mikrotik.com/Mikrotik.mib
COPY entrypoint.sh
