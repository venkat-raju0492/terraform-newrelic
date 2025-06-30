# Create NewRelic Infra Alerts
  
Use this resource to create and manage NRQL alert conditions in New Relic.

### Example Usage

```shell
  #Module Consul is one time config and can refer for any numbe of times
  module "consul" {
    source           = "git::https://github.com/cloudops-guru/newrelic_terraform.git"
  }

  module "NRQLCond" {
  source                       = "./.terraform/modules/consul/NRQLAlertCond/"
  policy_id                    = newrelic_alert_policy.node-alerts.id
  type                         = "static"
  name                         = "${var.project}-DevSlow Transactions"
  description                  = "Alert when transactions are taking too long"
  enabled                      = true
  violation_time_limit_seconds = 3600
  query                        = "SELECT average(duration) FROM Transaction where appName like 'atlas-omni-%-service' FACET appName"
  critical = {
    operator              = "above"
    threshold             = 5.5
    threshold_duration    = 300
    threshold_occurrences = "ALL"
  }

  warning = {
    operator              = "above"
    threshold             = 3.5
    threshold_duration    = 600
    threshold_occurrences = "ALL"
  }
  provider_version = var.provider_version
}

```