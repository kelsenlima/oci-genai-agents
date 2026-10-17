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

variable "knowledge_base_name" {
  type        = string
  default     = "kb-artigos-suporte"
  description = "Nome de exibição da Base de Conhecimento"
}

variable "agent_name" {
  type        = string
  default     = "customer-support-agent"
  description = "Nome de exibição do Agente de IA"
}