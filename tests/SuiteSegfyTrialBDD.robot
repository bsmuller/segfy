*** Settings ***
Resource         ../resource/Resource.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador

### SETUP: ele roda  keyword antes da suíte ou antes de um teste
### TEARDOWN: ele roda keyword depois de uma suíte ou um teste

*** Test Case ***
# Cenário 01: Criação de trial no Segfy
#   Dado que estou acessando a página trial
#   Quando preencher o campo nome Teste Nome
#   E preencher o campo e-mail tstm@segfy.com
#   E preencher o campo telefone (51)999999999
#   E preencher o campo corretora tstsegfym
#   E clicar no botão próximo passo
#   E selecionar o número de funcionários 1 pessoa
#   E preencher o login para a sua corretora tstsegfym
#   E preencher a senha Teste123
#   Então clico no botão para iniciar a avaliação de 7 dias

Cenário 02: Criação de assinatura no Segfy
  Dado que estou acessando a página trial
  Quando clicar na opção de login
  E preencho o e-mail com tstm@segfy.com
  E preencho a senha com Teste123
  E acessar a página de teste
  E clicar no link Assine já o sistema
#   Então me torno um cliente do sistema

# *** Keywords ***
