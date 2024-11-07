Feature: Restaurar senha

    Permite que o usuário altere a senha caso queira ou esqueça

Scenario: Ir ao formulário de recuperação de senha 

    Given que estou na página de login da OpenCart
    When clico em "Forgotten Password"
    Then sou redirecionado para o formulário de recuperação de senha

Scenario: Restaurar a senha a senha com sucesso

    Given que estou no formulário de alteração de senha da OpenCart
    When insiro o endereço "joaoteste@gkailm.com" no campo "E-Mail Address"
    And clico no botão "Continue"
    And abro a caixa de entrada do e-mail informado
    And abro e-mail da OpenCart
    And clico no link de alteração de senha
    And insiro uma senha nova
    And clico em "Continue"
    Then a senha é alterada com sucesso

Scenario: Alterar senha com sucesso pela plataforma

    Given que estou na página principal da OpenCart
    And estou logado na minha conta
    When clico no segundo ícone do canto superior direito
    And clico em "My Account"
    And clico em "Change your password"
    And insiro a entrada "123456Joao" no campo "Password"
    And insiro a entrada "123456Joao" no campo "Password Confirm"
    And clico no botão "Continue"
    Then a senha é alterada com sucesso 

Scenario: Validar mensagem de erro ao alterar a senha pela plataforma deixando os campos em branco

    Given que estou na página principal da OpenCart
    And estou logado na minha conta
    When clico no segundo ícone do canto superior direito
    And clico em "My Account"
    And clico em "Change your password"
    And não insiro entradas no campo "Password"
    And não insiro entradas no campo "Password Confirm"
    And clico no botão "Continue"
    Then uma mensagem de erro é exibida junta a uma borda vermelha no campo

Scenario: Validar mensagem de erro ao alterar a senha pela plataforma inserindo senhas divergentes nos campos

    Given que estou na página principal da OpenCart
    And estou logado na minha conta
    When clico no segundo ícone do canto superior direito
    And clico em "My Account"
    And clico em "Change your password"
    And insiro a entrada "123456Joao" no campo "Password"
    And insiro a entrada "1234567Joao" no campo "Password Confirm"
    And clico no botão "Continue"
    Then uma mensagem de erro é exibida junta a uma borda vermelha no campo

Scenario: Validar mensagem de erro ao alterar a senha pela plataforma inserindo uma senha com 3 caracteres

    Given que estou na página principal da OpenCart
    And estou logado na minha conta
    When clico no segundo ícone do canto superior direito
    And clico em "My Account"
    And clico em "Change your password"
    And insiro a entrada "123" no campo "Password"
    And insiro a entrada "123" no campo "Password Confirm"
    And clico no botão "Continue"
    Then uma mensagem de erro é exibida junta a uma borda vermelha no campo 

Scenario: Validar mensagem de erro ao alterar a senha pela plataforma inserindo uma senha com mais de 20 caracteres

    Given que estou na página principal da OpenCart
    And estou logado na minha conta
    When clico no segundo ícone do canto superior direito
    And clico em "My Account"
    And clico em "Change your password"
    And insiro a entrada "123456Joao1234567Joao" no campo "Password"
    And insiro a entrada "123456Joao1234567Joao" no campo "Password Confirm"
    And clico no botão "Continue"
    Then uma mensagem de erro é exibida junta a uma borda vermelha no campo
