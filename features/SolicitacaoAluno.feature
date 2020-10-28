Feature: Solicitações (visão do aluno)
  As a usuário aluno do transporte universitário
  I want to ter acesso à solicitações
  So that para que eu possa fazer-las.

  Cenário:Aluno solicita viagem única
    Given que eu estou logado com o usuário “João” e a senha “123”
    And estou na página “Solicitações”
    When eu seleciono “Solicitações de viagem única”
    And eu seleciono o ônibus “Recife Diário” da lista de ônibus disponíveis
    And eu seleciono  “Solicitar viagem única”
    Then eu posso ver a confirmação da solicitação de viagem única
    And eu posso ver a "Solicitação de viagem única" na página da coordenação

  Cenário:Aluno solicita troca de ônibus definitiva
    Given que eu estou logado com o usuário “João” e a senha “123”
    And estou na página “Solicitações”
    When eu seleciono  “Solicitações de troca de ônibus”
    And eu seleciono o ônibus “Recife Diário” da lista de ônibus disponíveis
    And eu seleciono  “Solicitar troca de ônibus definitiva”
    Then eu posso ver a confirmação da solicitação de  troca de ônibus definitiva
    And eu posso ver a "Solicitação de viagem troca de ônibus definitiva" na página da coordenação

  Cenário: Aluno solicita isenção de pagamento de taxa
    Given que eu estou logado com o usuário “João” e a senha “123”
    And estou na página “Solicitações”
    When eu seleciono  “Solicitações de isenção”
    And eu preencho o campo motivo com “Baixa Renda”
    And eu anexo “declaracao.pdf”
    And eu seleciono “Solicitar isenção de pagamento de taxa”
    Then eu posso ver a confirmação da solicitação de  isenção de pagamento de taxa
    And eu posso ver a "Solicitação de isenção do pagamento de taxa" na página da coordenação

  Cenário: Aluno solicita descadastramento
    Given que eu estou logado com o usuário “João” e a senha “123”
    And estou na página “Solicitações”
    When eu seleciono  “Solicitações de descadastramento”
    And eu seleciono  “Solicitar descadastramento”
    Then eu posso ver a confirmação da solicitação de descadastramento
    And eu posso ver a "Solicitação de descadastramento" na página da coordenação