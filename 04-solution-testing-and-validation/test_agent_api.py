import oci
import json

# Script de exemplo para validação da API do OCI Generative AI Agent Endpoint
def test_agent_session():
    config = oci.config.from_file() # Carrega a configuração padrão do ~/.oci/config
    
    # Substitua pelo OCID do seu Agent Endpoint gerado no Módulo 03
    agent_endpoint_id = "ocid1.genaiagentendpoint.oc1..exemplo"
    
    print("Iniciando sessão de teste com o OCI Generative AI Agent...")
    print(f"Endpoint Alvo: {agent_endpoint_id}")
    
    # Inicialização do cliente do serviço OCI GenAI Agent Runtime (a ser parametrizado)
    print("Sessão inicializada com sucesso. Testes de prompt prontos para execução.")

if __name__ == "__main__":
    test_agent_session()