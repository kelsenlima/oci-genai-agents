# Módulo 02: Configuração de Autonomous Database e OCI Vault

## 🇧🇷 Português (PT-BR)
Este módulo Terraform automatiza o provisionamento da camada de persistência e segurança para o OCI Generative AI Agents[cite: 1].

### Recursos Provisionados via Terraform:
- **Autonomous Database (ADB):** Instância Serverless/OLTP para armazenar os dados operacionais do suporte ao cliente[cite: 1].
- **OCI Vault & Key:** Cofre de chaves e chave mestre de criptografia (`customer-support-key`)[cite: 1].
- **Vault Secret:** Armazenamento seguro da senha do utilizador ADMIN do banco (`customer-support-admin-password`)[cite: 1].

### 📝 Passos Pós-Provisionamento (SQL & Database Tools):
A automação de infraestrutura via Terraform prepara a base de dados. As etapas de DDL/DML devem ser executadas no ambiente OCI via **Database Actions (SQL Console)**[cite: 1]:
1. **Esquema da Base de Dados:** Execução do script Oracle SQL para criação das tabelas no ADB[cite: 1].
2. **Carga de Dados:** Inserção dos registos de demonstração do suporte ao cliente[cite: 1].
3. **Database Tools Connection:** Configuração da conexão gerida no OCI conectada ao Secret do Vault[cite: 1].

---

## 🇺🇸 English (EN)
This Terraform module automates the deployment of the database and security layer required by OCI Generative AI Agents[cite: 1].

### Provisioned Resources via Terraform:
- **Autonomous Database (ADB):** Serverless OLTP instance to store customer support operational data[cite: 1].
- **OCI Vault & Key:** Key vault and master encryption key (`customer-support-key`)[cite: 1].
- **Vault Secret:** Secure storage for the database ADMIN user password (`customer-support-admin-password`)[cite: 1].

### 📝 Post-Provisioning Steps (SQL & Database Tools):
Infrastructure automation handles the provisioning. DDL/DML tasks are executed within OCI via **Database Actions (SQL Console)**[cite: 1]:
1. **Database Schema:** Running Oracle SQL scripts to create required tables in ADB[cite: 1].
2. **Data Population:** Inserting customer support sample records[cite: 1].
3. **Database Tools Connection:** Setting up the OCI managed connection referencing the Vault Secret[cite: 1].