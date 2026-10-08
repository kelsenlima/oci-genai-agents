output "dynamic_group_id" {
  value       = oci_identity_dynamic_group.genai_agents_dg.id
  description = "OCID do Grupo Dinamico criado / Dynamic Group OCID"
}

output "policy_id" {
  value       = oci_identity_policy.genai_agents_policy.id
  description = "OCID da Politica IAM criada / IAM Policy OCID"
}

output "bucket_name" {
  value       = oci_objectstorage_bucket.knowledge_base_bucket.name
  description = "Nome do Bucket criado / Bucket Name"
}

output "object_storage_namespace" {
  value       = data.oci_objectstorage_namespace.ns.namespace
  description = "Namespace do Object Storage / Object Storage Namespace"
}