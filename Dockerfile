FROM telegraf:latest

RUN apt-get update && apt-get install -y --no-install-recommends ipmitool net-snmp && \
    rm -rf /var/lib/apt/lists/*
