variable "tenancy_ocid" {
  type        = string
  description = "OCID da Tenancy OCI / Tenancy OCID"
}

variable "compartment_ocid" {
  type        = string
  description = "OCID do Compartimento / Compartment OCID"
}

variable "region" {
  type        = string
  default     = "sa-saopaulo-1"
  description = "Região OCI / OCI Region"
}

variable "db_admin_password" {
  type        = string
  sensitive   = true
  description = "Senha do usuário ADMIN do Autonomous Database"
}

variable "db_name" {
  type        = string
  default     = "genaiadb"
  description = "Nome do banco de dados Autonomous Database"
}