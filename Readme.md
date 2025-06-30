# newrelic_terraform
This repo is to store the newrelic dashboards alerts code


This module can be used to generate Newrelic Alert. This is not based on Quenries rather based on APM metrices. 

We would recommend an alerting strategy based on the Four Signals introduced in Google’s widely read book on Site Reliability Engineering.

The signals chosen for this module are:

Latency: High response time (seconds)
Traffic: Low throughput (requests/minute)
Errors: Error rate (errors/minute)
Saturation: CPU utilization (percentage utilized) [ This will be part of infra alert]