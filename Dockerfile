FROM telegraf:latest

RUN sed 's/main/main contrib non-free/g' /etc/apt/sources.list && \
    apt-get update && apt-get install -y --no-install-recommends ipmitool snmp snmp-mibs-downloader && \
    rm -rf /var/lib/apt/lists/*
