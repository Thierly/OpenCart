Feature: Registro de conta

    Permite o usuário criar uma conta na plataforma

Scenario: Registrar uma conta 

    Given que estou no formulário de registro da plataforma
    When insiro a entrada "Joao" no campo "First Name"
    And insiro a entrada "Silva" no campo "Last Name"
    And insiro a entrada "joaotestandosilva@email.com" no campo "E-Mail"
    And insiro a entrada "12345Joao" no campo "Password"
    And marco o checkbox do campo "Newsletter"
    And marco o checkbox "Privacy Policy"
    And clico no botão "Continue"
    Then a conta é registrada com sucesso

Scenario: Validar mensagem de erro ao registrar uma conta com informações já utilizadas

    Given que estou no formulário de registro da plataforma
    When insiro a entrada "Joao" no campo "First Name"
    And insiro a entrada "Silva" no campo "Last Name"
    And insiro a entrada "joaotestandosilva@email.com" no campo "E-Mail"
    And insiro a entrada "12345Joao" no campo "Password"
    And marco o checkbox do campo "Newsletter"
    And marco o checkbox "Privacy Policy"
    And clico no botão "Continue"
    Then uma mensagem de erro é exibida, a conta não é registrada

Scenario: Validar mensagem de erro ao registrar uma conta sem preencher nenhum campo 

    Given que estou no formulário de registro da plataforma
    And os campos estão todos vázios 
    When clico no botão "Continue"
    Then todos os campos ficam destacados em vermelho exibindo mensagem de erro

Scenario: Validar mensagem de erro ao registrar uma conta sem inserir entradas no campo "First Name"

    Given que estou no formulário de registro da plataforma
    When deixo o campo "First Name" vázio 
    And insiro a entrada "Silva" no campo "Last Name"
    And insiro a entrada "joaotestandosilva@email.com" no campo "E-Mail"
    And insiro a entrada "12345Joao" no campo "Password"
    And marco o checkbox do campo "Newsletter"
    And marco o checkbox "Privacy Policy"
    And clico no botão "Continue"
    Then uma mensagem de erro é exibida com o campo destacado em vermelho

Scenario: Validar mensagem de erro ao registrar uma conta inserindo 33 caracteres no campo "First Name"

    Given que estou no formulário de registro da plataforma
    When insiro a entrada "Joaodasilvajoaodasilvajoaodasilva" no campo "First Name"
    And insiro a entrada "Silva" no campo "Last Name"
    And insiro a entrada "joaotestandosilva@email.com" no campo "E-Mail"
    And insiro a entrada "12345Joao" no campo "Password"
    And marco o checkbox do campo "Newsletter"
    And marco o checkbox "Privacy Policy"
    And clico no botão "Continue"
    Then uma mensagem de erro é exibida junto ao campo destacado em vermelho

Scenario: Validar mensagem de erro ao registrar uma conta sem inserir entradas no campo "Last Name"

    Given que estou no formulário de registro da plataforma
    When insiro a entrada "Joao" no campo "First Name"
    And deixo o campo "Last Name" vázio
    And insiro a entrada "joaotestandosilva@email.com" no campo "E-Mail"
    And insiro a entrada "12345Joao" no campo "Password"
    And marco o checkbox do campo "Newsletter"
    And marco o checkbox "Privacy Policy"
    And clico no botão "Continue"
    Then uma mensagem de erro é exibida junto ao campo destacado em vermelho

Scenario: Validar mensagem de erro ao registrar uma conta inserindo 33 caracteres no campo "Last Name"

    Given que estou no formulário de registro da plataforma
    When insiro a entrada "Joao" no campo "First Name"
    And insiro a entrada "joaodasilvajoaodasilvajoaodasilva" no campo "Last Name"
    And insiro a entrada "joaotestandosilva@email.com" no campo "E-Mail"
    And insiro a entrada "12345Joao" no campo "Password"
    And marco o checkbox do campo "Newsletter"
    And marco o checkbox "Privacy Policy"
    And clico no botão "Continue"
    Then uma mensagem de erro é exibida junto ao campo destacado em vermelho

Scenario: Validar mensagem de erro ao registrar uma conta sem inserir um e-mail 

    Given que estou no formulário de registro da plataforma
    When insiro a entrada "Joao" no campo "First Name"
    And insiro a entrada "Silva" no campo "Last Name"
    And deixo o campo "E-Mail" vázio 
    And insiro a entrada "12345Joao" no campo "Password"
    And marco o checkbox do campo "Newsletter"
    And marco o checkbox "Privacy Policy"
    And clico no botão "Continue"
    Then uma mensagem de erro é exibida junto ao campo destacado em vermelho

Scenario: Validar mensagem de erro ao registrar uma conta inserindo um e-mail inválido

    Given que estou no formulário de registro da plataforma
    When insiro a entrada "Joao" no campo "First Name"
    And insiro a entrada "Silva" no campo "Last Name"
    And insiro a entrada "joaosilvasememail" no campo "E-Mail"
    And insiro a entrada "12345Joao" no campo "Password"
    And marco o checkbox do campo "Newsletter"
    And marco o checkbox "Privacy Policy"
    And clico no botão "Continue"
    Then uma mensagem de erro é exibida junto ao campo destacado em vermelho

Scenario: Validar mensagem de erro ao registrar uma conta sem inserir uma senha

    Given que estou no formulário de registro da plataforma
    When insiro a entrada "Joao" no campo "First Name"
    And insiro a entrada "Silva" no campo "Last Name"
    And insiro a entrada "joaotestandosilva@email.com" no campo "E-Mail"
    And não insiro entradas no campo "Password"
    And marco o checkbox do campo "Newsletter"
    And marco o checkbox "Privacy Policy"
    And clico no botão "Continue"
    Then uma mensagem de erro é exibida junto ao campo destacado em vermelho

Scenario: Validar mensagem de erro ao registrar uma conta inserindo 3 caracteres no campo "Password"

    Given que estou no formulário de registro da plataforma
    When insiro a entrada "Joao" no campo "First Name"
    And insiro a entrada "Silva" no campo "Last Name"
    And insiro a entrada "joaotestandosilva@email.com" no campo "E-Mail"
    And insiro a entrada "123" no campo "Password"
    And marco o checkbox do campo "Newsletter"
    And marco o checkbox "Privacy Policy"
    And clico no botão "Continue"
    Then uma mensagem de erro é exibida junto ao campo destacado em vermelho

Scenario: Validar mensagem de erro ao registrar uma conta inserindo mais de 20 caracteres no campo "Password"

    Given que estou no formulário de registro da plataforma
    When insiro a entrada "Joao" no campo "First Name"
    And insiro a entrada "Silva" no campo "Last Name"
    And insiro a entrada "joaotestandosilva@email.com" no campo "E-Mail"
    And insiro a entrada "12345Joao12345Joao12345Joao" no campo "Password"
    And marco o checkbox do campo "Newsletter"
    And marco o checkbox "Privacy Policy"
    And clico no botão "Continue"
    Then uma mensagem de erro é exibida junto ao campo destacado em vermelho

Scenario: Registrar uma conta sem marcar o checkbox "Newsletter"

    Given que estou no formulário de registro da plataforma
    When insiro a entrada "Joao" no campo "First Name"
    And insiro a entrada "Silva" no campo "Last Name"
    And insiro a entrada "joaotestandosilva@email.com" no campo "E-Mail"
    And insiro a entrada "12345Joao" no campo "Password"
    And  não marco o checkbox do campo "Newsletter"
    And marco o checkbox "Privacy Policy"
    And clico no botão "Continue"
    Then A conta é registrada com sucesso

Scenario: Validar mensagem de erro ao registrar uma conta sem aceitar os termos de política de privacidade

    Given que estou no formulário de registro da plataforma
    When insiro a entrada "Joao" no campo "First Name"
    And insiro a entrada "Silva" no campo "Last Name"
    And insiro a entrada "joaotestandosilva@email.com" no campo "E-Mail"
    And insiro a entrada "12345Joao" no campo "Password"
    And marco o checkbox do campo "Newsletter"
    And  não marco o checkbox "Privacy Policy"
    And clico no botão "Continue"
    Then uma pop-up com uma mensagem de erro é exibida
