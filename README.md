<h1>AVALIAÇÃO TÉCNICA PARA TESTER SEGFY</h1>

Neste repositório você irá encontrar o projeto de automação com a criação de um trial do Segfy e a efetivação da assinatura por dentro do próprio sistema.

<h3>1 - Planejamento da automação dos testes de Interface</h3>
Serão criados 2 cenários de testes. 

<li>Cenário 01: Criação de trial no Segfy
<li>Cenário 02: Criação de assinatura no Segfy

Para visualizar os passos dos cenários acima basra clicar no link abaixo:
<li><a href="https://github.com/bsmuller/testeRobot/blob/master/tests/SuiteSegfyTrialBDD.robot" rel="nofollow">Cenários de Teste</a>
 
  
<h3>2 - Orientações para execução do teste</h3>
O teste foi criado utilizando o Atom com Robot Framework.
Para executá-lo realize os seguintes passos:
<li>Abra o Atom
<li>Importe o projeto deste repositório  
<li>Instale o pacote platformio-ide-terminal em ATOM > Packages > Settings View > Install Packages/Themes
<li>Vá no Settings do plugin, no campo Shell Override e cole o diretório do seu shell preferido, no meu caso foi C:\Windows\system32\cmd.exe.
<li>Reinicie o Atom
<li>Clique no +, localizado no canto esquerdo da tela
<li>Cole a seguinte linha de comando e pressione ENTER: robot -d ./results tests\SuiteSegfyTrialBDD.robot
