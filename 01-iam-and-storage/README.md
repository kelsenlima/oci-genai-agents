# Módulo 01: Configuração de IAM e Object Storage

## 🇧🇷 Português (PT-BR)
Este módulo Terraform automatiza as camadas fundamentais de segurança e armazenamento necessárias para o **OCI Generative AI Agents**.

### Recursos Criados:
- **Grupo Dinâmico:** `oci-genai-agents-service` associado aos recursos `genaiagentdataingestionjob` e `genaiagent`.
- **Políticas IAM:** `oci-generative-ai-agents-workshop` concedendo permissões de gestão e leitura para Object Storage, Cofre de Segredos (Vault) e Ferramentas de Banco de Dados.
- **Bucket no Object Storage:** `artigos-da-base-de-conhecimento` para armazenamento dos documentos PDF da base de conhecimento.

---

## 🇺🇸 English (EN)
This Terraform module automates the foundational security and storage layers required by **OCI Generative AI Agents**.

### Provisioned Resources:
- **Dynamic Group:** `oci-genai-agents-service` targeting `genaiagentdataingestionjob` and `genaiagent`.
- **IAM Policy:** `oci-generative-ai-agents-workshop` granting management and read permissions for Object Storage, Vault Secrets, and Database Tools.
- **Object Storage Bucket:** `artigos-da-base-de-conhecimento` to host knowledge base PDFs.