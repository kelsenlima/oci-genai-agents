output "knowledge_base_id" {
  value       = oci_generative_ai_agent_knowledge_base.genai_kb.id
  description = "OCID da Base de Conhecimento"
}

output "agent_id" {
  value       = oci_generative_ai_agent_agent.genai_agent.id
  description = "OCID do Agente de IA"
}

output "agent_endpoint_id" {
  value       = oci_generative_ai_agent_agent_endpoint.genai_agent_endpoint.id
  description = "OCID do Endpoint do Agente"
}