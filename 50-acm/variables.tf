variable "project_name" {
    default = "expense"
}

variable "environment" {
    default = "dev"
}

variable "common_tags" {
    default = {
        Project = "expense"
        Terraform = "true"
        Environment = "dev"
    }
}


variable "zone_name" {
    default = "amarvarma81s.online"
}

variable "zone_id" {
    default = "Z05068061Y4BZZH3UG4QM"
}