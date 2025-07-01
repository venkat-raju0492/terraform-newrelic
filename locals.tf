locals {
  resource = [
    {
      bu        = "<NewRelic Dashboard tab Name>" 
      title = [
        "Widget title Name1",
        "Widget title Name2",
        "Widget title Name3",
        "Widget title Name4",
        <can have more titles as required>
      ]
      nrql_query = [
        "select latest(<cloudwatch metric name>_${var.environment}) from Metric where metricName='<cloudwatch metric name>_${var.environment}' TIMESERIES 1 hour LIMIT MAX",         //this is the NRQL for widget1
        "select latest(<cloudwatch metric name>_${var.environment}) from Metric where metricName='<cloudwatch metric name>_${var.environment}' TIMESERIES 1 hour LIMIT MAX",         //this is the NRQL for widget2
        "select latest(<cloudwatch metric name>_${var.environment}) from Metric where metricName='<cloudwatch metric name>_${var.environment}' TIMESERIES 1 hour LIMIT MAX",         //this is the NRQL for widget3
        "select latest(<cloudwatch metric name>_${var.environment}) from Metric where metricName='<cloudwatch metric name>_${var.environment}' TIMESERIES 1 hour LIMIT MAX",         //this is the NRQL for widget4
        <add more NRQL queries as required>
      ]  
    },
    {
      bu = "<Newrelic Dashboard tab2 Name>",
      title=[
        "Widget title Name1",
        "Widget title Name2",
        "Widget title Name3",
        "Widget title Name4",
      ],
      nrql_query=[
        "select latest(<cloudwatch metric name>_${var.environment}) from Metric where metricName='<cloudwatch metric name>_${var.environment}' TIMESERIES 1 hour LIMIT MAX",         //this is the NRQL for widget1
        "select latest(<cloudwatch metric name>_${var.environment}) from Metric where metricName='<cloudwatch metric name>_${var.environment}' TIMESERIES 1 hour LIMIT MAX",         //this is the NRQL for widget2
        "select latest(<cloudwatch metric name>_${var.environment}) from Metric where metricName='<cloudwatch metric name>_${var.environment}' TIMESERIES 1 hour LIMIT MAX",         //this is the NRQL for widget3
        "select latest(<cloudwatch metric name>_${var.environment}) from Metric where metricName='<cloudwatch metric name>_${var.environment}' TIMESERIES 1 hour LIMIT MAX",         //this is the NRQL for widget4
        <add more NRQL queries as required>
      ]
    }  
  ] 
}