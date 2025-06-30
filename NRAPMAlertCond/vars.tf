variable "project"{
    description = "Enter Project Name"
}

variable "service"{
    description = "Enter Service name"
}

variable "entities_id"{
    description = "The instance IDs associated with this condition." 
}

variable "policy_id"{
    description = "The ID of the policy where this condition should be used."
} 

variable "provider_version"{
    default = "2.41.2"
}

variable duration{
    description =  "Duration"
}
variable operator{
    description =  "Operator , equals, above below etc"
}
variable priority{
    description =  "critical"
}
variable threshold{
    description =  "Threashold value"
}
variable time_function{
    description =  "Timefunction"
}
variable "nr_type"{
    description = "The type of condition. One of: apm_app_metric, apm_jvm_metric, apm_kt_metric, browser_metric, mobile_metric"
}
variable "metric"{
    description = "The metric field accepts parameters based on the type set https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_condition "
}
variable "condition_scope" {
    description = "application or instance. Choose application for most scenarios. If you are using the JVM plugin in New Relic, the instance setting allows your condition to trigger for specific app instances. "
}

    