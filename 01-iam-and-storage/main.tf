terraform {
  required_version = ">= 1.0.0"
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 4.0.0"
    }
  }
}

provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  region       = var.region
}

# 1. Grupo Dinâmico para o Serviço OCI GenAI Agents
resource "oci_identity_dynamic_group" "genai_agents_dg" {
  compartment_id = var.tenancy_ocid
  name           = "oci-genai-agents-service"
  description    = "Grupo Dinamico para autorizar o servico OCI Generative AI Agents"
  matching_rule  = "ANY {resource.type='genaiagentdataingestionjob', resource.type='genaiagent'}"
}

# 2. Políticas de Segurança IAM
resource "oci_identity_policy" "genai_agents_policy" {
  compartment_id = var.tenancy_ocid
  name           = "oci-generative-ai-agents-workshop"
  description    = "Politicas IAM para o workshop de Agentes de IA Generativa na OCI"

  statements = [
    "allow group ${var.user_group_name} to manage genai-agent-family in tenancy",
    "allow group ${var.user_group_name} to manage object-family in tenancy",
    "allow group ${var.user_group_name} to manage secret-family in tenancy",
    "allow dynamic-group oci-genai-agents-service to read objects in tenancy",
    "allow dynamic-group oci-genai-agents-service to read secret-bundle in tenancy",
    "allow dynamic-group oci-genai-agents-service to read database-tools-family in tenancy"
  ]

  depends_on = [oci_identity_dynamic_group.genai_agents_dg]
}

# 3. Namespace do Object Storage
data "oci_objectstorage_namespace" "ns" {
  compartment_id = var.compartment_ocid
}

# 4. Bucket para os Artigos da Base de Conhecimento
resource "oci_objectstorage_bucket" "knowledge_base_bucket" {
  compartment_id = var.compartment_ocid
  name           = var.bucket_name
  namespace      = data.oci_objectstorage_namespace.ns.namespace
  access_type    = "NoPublicAccess"
  storage_tier   = "Standard"
}