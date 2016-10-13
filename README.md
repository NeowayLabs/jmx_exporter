jmx exporter
---

# This repo clone and build jmx_exporter - https://github.com/prometheus/jmx_exporter

## Build:

Install docker and run

        sudo make all

## Usage:

Append this line in your java app:

        -javaagent:/path/jmx_prometheus_javaagent.jar=9105:/path/jmx_prometheus_config.yaml
