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

# 1. Base de Conhecimento (OCI GenAI Knowledge Base)
resource "oci_generative_ai_agent_knowledge_base" "genai_kb" {
  compartment_id = var.compartment_ocid
  display_name   = var.knowledge_base_name
  description    = "Base de conhecimento automatizada via Terraform para OCI GenAI Agents"

  index_config {
    index_config_type = "DEFAULT_INDEX_CONFIG"
  }
}

# 2. Agente de IA Generativa (OCI GenAI Agent)
resource "oci_generative_ai_agent_agent" "genai_agent" {
  compartment_id     = var.compartment_ocid
  display_name       = var.agent_name
  description        = "Agente de suporte ao cliente criado via IaC"
  knowledge_base_ids = [oci_generative_ai_agent_knowledge_base.genai_kb.id]
}

# 3. Endpoint do Agente de IA
resource "oci_generative_ai_agent_agent_endpoint" "genai_agent_endpoint" {
  agent_id     = oci_generative_ai_agent_agent.genai_agent.id
  display_name = "${var.agent_name}-endpoint"
}