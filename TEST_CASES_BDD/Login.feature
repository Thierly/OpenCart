Feature: Login

    Permite o usuário fazer login com uma conta criada na plataforma

Scenario: Realizar login com sucesso

    Given estou na página principal da OpenCart
    And tenho uma conta registrada
    When clico no segundo ícone de perfil no canto superior direito
    And clico em "Login"
    And no formulário "Returning Costumer" insiro "joaoteste@gkailm.com" no campo "E-Mail Address"
    And no formulário "Returning Costumer" insiro "12345Joao" no campo "Password"
    And clico no botão "Login"
    Then sou logado com sucesso na plataforma

Scenario: Validar mensagem de erro ao realizar login com os campos em branco

    Given que estou na página de login da OpenCart
    When no formulário "Returning Costumer" deixo o campo "E-Mail Address" vázio
    And no formulário "Returning Costumer" deixo o campo "Password" vázio 
    And clico no botão "Login"
    Then um pop-up com mensagem de erro é exibido na tela 

Scenario: Validar mensagem de erro ao realizar login sem inserir entradas no campo "E-Mail Address"

    Given que estou na página de login da OpenCart
    When no formulário "Returning Costumer" deixo o campo "E-Mail Address" vázio
    And no formulário "Returning Costumer" insiro "12345Joao" no campo "Password" 
    And clico no botão "Login"
    Then um pop-up com mensagem de erro é exibido na tela 

Scenario: Validar mensagem de erro ao realizar login sem inserir entradas no campo "Password"

    Given que estou na página de login da OpenCart
    When no formulário "Returning Costumer" insiro "joaoteste@gkailm.com" no campo "E-Mail Address" 
    And no formulário "Returning Costumer" deixo o campo "Password" vázio 
    And clico no botão "Login"
    Then um pop-up com mensagem de erro é exibido na tela 

Scenario: Validar mensagem de erro ao realizar login com uma senha incorreta

    Given que estou na página de login da OpenCart
    When no formulário "Returning Costumer" insiro "joaoteste@gkailm.com" no campo "E-Mail Address" 
    And no formulário "Returning Costumer" insiro "12345J" no campo "Password"
    And clico no botão "Login"
    Then um pop-up com mensagem de erro é exibido na tela 

Scenario: Validar mensagem de erro ao realizar login com credenciais não registradas

    Given que estou na página de login da OpenCart
    When no formulário "Returning Costumer" insiro "joaoteste@emailfajuto.com" no campo "E-Mail Address" 
    And no formulário "Returning Costumer" insiro "12345inomes" no campo "Password"
    And clico no botão "Login"
    Then um pop-up com mensagem de erro é exibido na tela 