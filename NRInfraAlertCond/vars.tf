variable "project"{
    description = "Name of Project"
}

variable "service"{
    description = "name of  service"
} 

variable "nr_type"{
    description = "The type of condition. One of: apm_app_metric, apm_jvm_metric, apm_kt_metric, browser_metric, mobile_metric"
}

variable "policy_id"{
    description = "The ID of the policy where this condition should be used"
}  

variable description{
    description =  "The description of the Infrastructure alert condition."
}
variable event{
    description =  "Event Supported by the infra_metric condition type."
}
variable select{
    description =  " The attribute name to identify the metric being targeted; for example, cpuPercent, diskFreePercent, or memoryResidentSizeBytes. The underlying API will automatically populate this value for Infrastructure integrations (for example diskFreePercent), so make sure to explicitly include this value to avoid diff issues. Supported by the infra_metric condition type."
}
variable comparison{
    description =  "The operator used to evaluate the threshold value. Valid values are above, below, and equal. Supported by the infra_metric and infra_process_running condition types."
}
variable where_condiction{
    description =  " Where , If applicable, this identifies any Infrastructure host filters used; for example: hostname LIKE '%cassandra%'."
}
variable critical{
    description =  "critical"
    type        = map(string)
    default     = {}
}
variable warning{
    description =  "critical"
    type        = map(string)
    default     = {}
} 