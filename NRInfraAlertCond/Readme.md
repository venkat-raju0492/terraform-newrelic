# Create NewRelic Query Language Alert
Use this resource to create and manage Infrastructure alert conditions in New Relic.

NOTE:
The newrelic_nrql_alert_condition resource is preferred for configuring alerts conditions. In most cases feature parity can be achieved with a NRQL query. Other condition types may be deprecated in the future and receive fewer product updates.

### Example code

```shell
#Module Consul is one time config and can refer for any numbe of times
  module "consul" {
    source           = "git::https://github.com/cloudops-guru/newrelic_terraform.git"
  }
  module "NRInfraCond-Diskspace" {
  policy_id        = newrelic_alert_policy.node-alerts.id
  project          = "${var.project}-${var.enviornment}"
  service          = "High disk usage"
  source           = "./.terraform/modules/consul/NRInfraAlertCond"
  description      = "Warning if disk usage goes above 80% and critical alert if goes above 90%"
  nr_type          = "infra_metric"
  event            = "StorageSample"
  select           = "diskUsedPercent"
  comparison       = "above"
  where_condiction = "(clusterName = '${var.project}-dev')"

  critical = {
    duration       = 10
    value          = 90
    time_function  = "all"
  }

  warning = {
    duration       = 10
    value          = 80
    time_function  = "all"
  }
  provider_version = var.provider_version
}
```