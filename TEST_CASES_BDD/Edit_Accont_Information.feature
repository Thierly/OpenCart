Feature: Editar informações da conta

    Permite o usuário alterar informações básicas da conta

Scenario: Verificar se as informações atuais ficam salvas no formulário de alteração de informações

    Given que estou na página principal da OpenCart
    And estou logado na minha conta
    When clico no segundo ícone do canto superior direito
    And clico em "My Account"
    And clico em "Edit your account information"
    Then os campos mostram as informações de usuário atuais 

Scenario: Alterar todas as informações básicas com sucesso

    Given que estou na página principal da OpenCart
    And estou logado na minha conta
    When clico no segundo ícone do canto superior direito
    And clico em "My Account"
    And clico em "Edit your account information"
    And apago as informações do campo "First Name" 
    And insiro a entrada "Joao" no campo "First Name"
    And apago as informações do campo "Last Name"
    And insiro a entrada "Teste" no campo "Last Name"
    And apago as informações do campo "E-Mail"
    And insiro a entrada "joaoteste@email.com" no campo "E-Mail"
    And clico no botão "Continue"
    Then as informações são alteradas com sucesso

Scenario: Validar mensagem de erro ao atualizar informações básicas deixando o campo "First Name" vázio

    Given que estou logado no OpenCart
    And estou na página de formulário de alterar informações básicas 
    When apago as informações do campo "First Name"
    And não altero as informações do campo "Last Name"
    And não altero as informações do campo "E-Mail"
    And clico no botão "Continue"
    Then Uma mensagem de erro é exibida junto a uma borda vermelha no campo 

Scenario: Validar mensagem de erro ao atualizar informações básicas inserindo 33 caracteres no campo "First Name"

    Given que estou logado no OpenCart
    And estou na página de formulário de alterar informações básicas 
    When apago as informações do campo "First Name"
    And insiro a entrada "joaodasilvajoaodasilvajoaodasilva"
    And não altero as informações do campo "Last Name"
    And não altero as informações do campo "E-Mail"
    And clico no botão "Continue"
    Then Uma mensagem de erro é exibida junto a uma borda vermelha no campo 

Scenario: Validar mensagem de erro ao atualizar informações básicas deixando o campo "Last Name" vázio

    Given que estou logado no OpenCart
    And estou na página de formulário de alterar informações básicas 
    When apago as informações do campo "Last Name"
    And não altero as informações do campo "First Name"
    And não altero as informações do campo "E-Mail"
    And clico no botão "Continue"
    Then Uma mensagem de erro é exibida junto a uma borda vermelha no campo

Scenario: Validar mensagem de erro ao atualizar informações básicas inserindo 33 caracteres no campo "Last Name"

    Given que estou logado no OpenCart
    And estou na página de formulário de alterar informações básicas 
    When apago as informações do campo "Last Name"
    And insiro a entrada "joaodasilvajoaodasilvajoaodasilva"
    And não altero as informações do campo "First Name"
    And não altero as informações do campo "E-Mail"
    And clico no botão "Continue"
    Then Uma mensagem de erro é exibida junto a uma borda vermelha no campo 

Scenario: Validar mensagem de erro ao atualizar informações básicas deixando o campo "E-Mail" vázio

    Given que estou logado no OpenCart
    And estou na página de formulário de alterar informações básicas 
    When apago as informações do campo "E-Mail"
    And não altero as informações do campo "First Name"
    And não altero as informações do campo "Last Name"
    And clico no botão "Continue"
    Then Uma mensagem de erro é exibida junto a uma borda vermelha no campo

Scenario: Validar mensagem de erro ao atualizar informações básicas inserindo um e-mail inválido no campo "E-Mail"

    Given que estou logado no OpenCart
    And estou na página de formulário de alterar informações básicas 
    When apago as informações do campo "E-Mail"
    And insiro a entrada "joaotesteemail.silva"
    And não altero as informações do campo "First Name"
    And não altero as informações do campo "Last Name"
    And clico no botão "Continue"
    Then Uma mensagem de erro é exibida junto a uma borda vermelha no campo



