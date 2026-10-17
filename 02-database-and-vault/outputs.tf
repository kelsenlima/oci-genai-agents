output "adb_id" {
  value       = oci_database_autonomous_database.genai_adb.id
  description = "OCID do Autonomous Database"
}

output "vault_id" {
  value       = oci_kms_vault.genai_vault.id
  description = "OCID do OCI Vault"
}

output "secret_id" {
  value       = oci_vault_secret.db_password_secret.id
  description = "OCID do Secret armazenado no Vault"
}