Feature: Pagamento da mensalidade
	As a “aluno” cadastrado no sistema “Campibus” 
	I want to ter acesso a formas de pagamento de mensalidade online
	So that o aluno consiga realizar o pagamento da mensalidade

	Scenario: Aluno envia pagamento por cartão de crédito que é validado corretamente
		Given aluno está logado como usuário com login “João” e senha “123”
		And está na página “Pagamentos”
		And número do “Cartão de crédito” é “1234 2345 3456 4567”
		And número do “CVV” é “123”
		And a “Senha” é “123456”
		When seleciona a opção “Pagamento em cartão de crédito”,
			com “Cartão de crédito” o valor “1234 2345 3456 4567”,
			com “CVV” o valor “111”
			e “Senha” o valor “123456”
		Then aparece uma caixa de mensagem “Pagamento realizado com sucesso”
	
	Scenario: Aluno envia pagamento por cartão de crédito que não é validado corretamente 
		Given aluno está logado como usuário com login “João” e senha “123”
		And está na página “Pagamentos”
		And número do “Cartão de crédito” é “1234 2345 3456 4567”
		And número do “CVV” é “123”
		And a “Senha” é “123456”
		When seleciona a opção “Pagamento em cartão de crédito”,
			com “Cartão de crédito” o valor “1234 2345 3456 456”,
			com “CVV” o valor “123”
			e “Senha” o valor “123456”
		Then aparece uma caixa de mensagem “Pagamento não realizado, número do cartão não está no formato correto”

	Scenario: Aluno envia solicitação de pagamento por boleto bancário e gera o boleto
		Given aluno está logado como usuário com login “João” e senha “123”
		And está na página “Pagamentos”
		When seleciona a opção “Pagamento por boleto bancário”
		Then aparece uma caixa de mensagem “Boleto gerado com sucesso”
		And uma opção para imprimir o boleto
	
	Scenario: Aluno visualiza sua situação de pagamento em dia
		Given aluno está logado como usuário com login “João” e senha “123”
		And está na página “Pagamentos”
		And sua “Situação do pagamento” está como “Pago”
		When seleciona a opção “Visualizar situação de pagamento”
		Then aparece uma caixa de mensagem “Sua situação de pagamento está: ‘Pago’”
		