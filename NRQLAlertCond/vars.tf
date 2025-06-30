variable "policy_id"{
    description = "The ID of the alert policy where this condition should be used"
}
variable "type"{
    description = "The type of the condition. Valid values are static or baseline. Defaults to static."
}
variable "name"{
    description = "name-The title of the condition."
}
variable "description"{
    description = "The description of the NRQL alert condition."
}
variable "enabled"{
    description = "Whether to enable the alert condition. Valid values are true and false. Defaults to true."
}
variable "violation_time_limit_seconds"{
    description = "violation_time_limit_seconds"
}
variable "query"{
    description = "A NRQL query."
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
 