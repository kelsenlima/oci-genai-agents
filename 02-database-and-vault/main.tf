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

# 1. Autonomous Database (ADB)
resource "oci_database_autonomous_database" "genai_adb" {
  compartment_id           = var.compartment_ocid
  db_name                  = var.db_name
  display_name             = "customer-support-db"
  admin_password           = var.db_admin_password
  cpu_core_count           = 1
  data_storage_size_in_tbs = 1
  db_workload              = "OLTP"
  is_free_tier             = true
  license_model            = "LICENSE_INCLUDED"
}

# 2. OCI Vault (Cofre de Chaves)
resource "oci_kms_vault" "genai_vault" {
  compartment_id = var.compartment_ocid
  display_name   = "customer-support-secrets"
  vault_type     = "DEFAULT"
}

# 3. Master Encryption Key
resource "oci_kms_key" "genai_key" {
  compartment_id = var.compartment_ocid
  display_name   = "customer-support-key"
  key_shape {
    algorithm = "AES"
    length    = 32
  }
  management_endpoint = oci_kms_vault.genai_vault.management_endpoint
}

# 4. Vault Secret (Senha do Banco de Dados)
resource "oci_vault_secret" "db_password_secret" {
  compartment_id = var.compartment_ocid
  vault_id       = oci_kms_vault.genai_vault.id
  key_id         = oci_kms_key.genai_key.id
  secret_name    = "customer-support-admin-password"

  secret_content {
    content_type = "BASE64"
    content      = base64encode(var.db_admin_password)
  }
}