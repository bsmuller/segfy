*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  firefox
${URL}      https://homol-www.segfy.com/Experimente

*** Keywords ***
#### Setup e Teardown
Abrir navegador
    Open Browser  ${URL}  ${BROWSER}

Fechar navegador
    Close Browser

#### Passo-a-passo
Dado que estou acessando a página trial
  Title Should Be  Experimente o Segfy por 7 dias - Segfy Corretores de seguros e VOCÊ!
Quando preencher o campo nome ${NOME}
  Input Text    id=cphMaster_cphMasterTemplate_txtNome    ${NOME}
E preencher o campo e-mail ${EMAIL}
  Input Text    id=cphMaster_cphMasterTemplate_txtEmail    ${EMAIL}
E preencher o campo telefone ${TELEFONE}
  Input Text    id=cphMaster_cphMasterTemplate_txtTelefone   ${TELEFONE}
E preencher o campo corretora ${CORRETORA}
  Input Text    id=cphMaster_cphMasterTemplate_txtEmpresa    ${CORRETORA}
E clicar no botão próximo passo
  Click Element    id=cphMaster_cphMasterTemplate_btnNextStep
  Sleep    10
E selecionar o número de funcionários ${COLABORADORES}
  Select From List By Label   id=cphMaster_cphMasterTemplate_ddlColaboradores  ${COLABORADORES}
E preencher o login para a sua corretora ${LOGINCORRETORA}
  Input Text    id=cphMaster_cphMasterTemplate_txtLoginCorretora    ${LOGINCORRETORA}
E preencher a senha ${SENHA}
  Input Text    id=cphMaster_cphMasterTemplate_txtSenha    ${SENHA}
Então clico no botão para iniciar a avaliação de 7 dias
  Click Element    id=cphMaster_cphMasterTemplate_btnIniciarAvaliacao
  Sleep    60
Quando clicar na opção de login
  Click Element    id=hs-eu-confirmation-button
  Click Element    id=cphMaster_hplLogin
E preencho o e-mail com ${EMAILLOGIN}
  Input Text    id=__BVID__16    ${EMAILLOGIN}
E preencho a senha com ${SENHALOGIN}
  Input Text    id=__BVID__19    ${SENHALOGIN}
E acessar a página de teste
  Click Element    xpath=//button[contains(.,'Entrar')]
  Click Element    xpath=//button[contains(.,'×')]
  Title Should Be  Segfy.com - Home
E clicar no link Assine já o sistema
  Click Element    xpath=//a[contains(text(),'Assine já o sistema!')]
  Title Should Be  Segfy.com - Nova Assinatura
  Sleep    30
#Então me torno um cliente do sistema
#  Click Element    id=ContentPlaceHolderMaster_CphMasterAutenticado_btnContratar
#  Element Text Should Be  css=.col-sm-12 > h4  Dados de cobrança
#  Input Text    id=ContentPlaceHolderMaster_CphMasterAutenticado_informacoesCobranca_txtCpfCnpj  570.503.860-73
#  Input Text    id=ContentPlaceHolderMaster_CphMasterAutenticado_informacoesCobranca_txtCep  93285-480
#  Click Element    css=.fa-search
# Element Attribute Value Should Be    id=ContentPlaceHolderMaster_CphMasterAutenticado_informacoesCobranca_txtUf  RS
#  Element Attribute Value Should Be    id=ContentPlaceHolderMaster_CphMasterAutenticado_informacoesCobranca_txtCidade  Esteio
#  Click Element    id=ContentPlaceHolderMaster_CphMasterAutenticado_btnAssinar
#  Element Text Should Be  css=p:nth-child(2)  Suas informações foram atualizadas
