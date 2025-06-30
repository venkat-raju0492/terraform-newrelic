# Create NR APM Based alerts
 Use this resource to create and manage alert conditions for APM, Browser, and Mobile in New Relic.The newrelic_nrql_alert_condition resource is preferred for configuring alerts conditions. In most cases feature parity can be achieved with a NRQL query. Other condition types may be deprecated in the future and receive fewer product updates.

### Example code

```shell
#Module Consul is one time config and can refer for any numbe of times
  module "consul" {
    source           = "git::https://github.com/cloudops-guru/newrelic_terraform.git"
  }

  module "NRCond" {
  count            = length(var.apps_list)
  source           = "./.terraform/modules/consul/NRAlertCond"
  policy_id        = newrelic_alert_policy.node-alerts.id
  project          = "${var.project}-${var.enviornment}"
  service          = "${var.apps_list[count.index]} - Error percentage (High)"
  entitie_id       = data.newrelic_entity.my-app1[count.index].application_id
  nr_type          = "apm_app_metric"
  metric           = "error_percentage"
  condition_scope  = "application"
  provider_version = var.provider_version
  duration         = 5
  operator         = "above"
  priority         = "critical"
  threshold        = "5"
  time_function    = "all"
}

```