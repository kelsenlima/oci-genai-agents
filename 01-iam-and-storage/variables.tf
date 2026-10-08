variable "tenancy_ocid" {
  type        = string
  description = "OCID da Tenancy OCI / Tenancy OCID"
}

variable "compartment_ocid" {
  type        = string
  description = "OCID do Comparitmento (Root) / Compartment OCID"
}

variable "user_group_name" {
  type        = string
  default     = "Administrators"
  description = "Nome do grupo de usuários OCI / User group name"
}

variable "region" {
  type        = string
  default     = "sa-saopaulo-1"
  description = "Região OCI (ex: sa-saopaulo-1, us-ashburn-1) / OCI Region"
}

variable "bucket_name" {
  type        = string
  default     = "artigos-da-base-de-conhecimento"
  description = "Nome do Bucket no Object Storage / Object Storage Bucket Name"
}