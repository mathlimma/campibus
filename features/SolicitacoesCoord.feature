Feature: Solicitações (visão da coordenação)
  As a coordenador do transporte universitário
  I want to ter acesso às solicitações feitas pelos alunos
  So that para que eu possa analisá-las e julgá-las necessárias ou não.

  Cenário: Responder solicitação de viagem única
    Given que eu estou logado com o usuário “Coordenacao” e a senha “admin123”
    And estou na página “Solicitações de viagem única”
    When eu aceito a solicitação do aluno com CPF ”12345678999” que solicitou viagem 	no ônibus “Recife-Diário”
    Then eu posso ver a confirmação da solicitação de viagem única
    And eu posso ver o crédito de viagem única na página do aluno

Cenário: Responder de solicitação de mudança definitiva de ônibus
	  Given que eu estou logado como usuário “Coordenacao” e a senha “admin123”
    And estou na página “Solicitações de mudança definitiva de ônibus”
    When eu aceito a solicitação do aluno com CPF ”12345678999” que solicitou mudança para o ônibus “Recife-Diário”
    Then eu posso ver a confirmação da solicitação de mudança
    And eu posso ver aluno com CPF ”12345678999” na lista do ônibus “Recife-Diário”


  Cenário: Responder de solicitação de descadastramento
	  Given que eu estou logado como usuário “Coordenacao” e a senha “admin123”
    And estou na página “Solicitações de descadastramento”
    When eu aceito a solicitação do aluno com CPF ”12345678999” que solicitou descadastramento do ônibus “Recife-Diário”
    Then eu posso ver a confirmação da solicitação de descadastramento
    And eu posso ver que o aluno com CPF ”12345678999” não está na lista do ônibus “Recife-Diário”

 Cenário: Responder de solicitação de isenção
	  Given que eu estou logado como usuário “Coordenacao” e a senha “admin123”
    And estou na página “Solicitações de isenção”
    When eu aceito a solicitação do aluno com CPF ”12345678999” 
    Then eu posso ver a confirmação da solicitação de isenção
    And eu posso ver que o aluno com CPF ”12345678999” é isento no cadastro do aluno


