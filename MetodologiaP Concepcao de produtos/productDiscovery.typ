#set text(size: 14pt)

= Product Discovery

O Product Discovery é o processo de entender as necessidades do usuário e do
negócio para construir o produto certo, validando ideias antes do desenvolvimento
(Delivery).

Faça todo o processo de Discovery do seguinte problema: Redução de Abandono de
Carrinho no App &quot;FastEasy&quot;, seguindo o modelo apresentado em sala de aula.\
\

== 1. Alinhamento 
#v(1em)
*Problema central*: Alto taxa de pessoas que adicionam algum produto no carrinho mas não finalizam a compra, isso impacta 
diretamente no negocio pois acarreta uma grande perca de receita direta e também baixo ROI (Retorno sobre investimento),
pessoas entram no app a partir de campanhas e anúncios porém acabam não comprando os produtos e apenas os deixam no carrinho.
#v(1em)


== 2. Pesquisa

Devemos entender o por que dos clientes desistirem de suas finalizar suas compras desde a análise do aplicativo (telas muitoconfusas, login/cadastro de credenciais muito longos, poucas opções de pagamento). Também podemos entrevistar usuários que
desistiram de comprar para entender os motivos.

== 3. Ideação

Com base nos problemas devemos fazer uma reunião para criar possíveis soluções, por exemplo supondo os problemas acima
poderia ser adiciona um checkout mais rapido (com login via rede sociais ou biometria), telas menos confusas e mais cativantes e adicionar mais formas de pagamento.

== 4. Prototipagem e Testes

Antes de implementar tudo devemos fazer testes da forma mais simples possível, selecionando alguns usuários apenas para testar, criando protótipos mais simples e com menor custo, no final devemos observar tudo e analisar os dados novamente.

#v(13pt)
== 5. Refinamento

Cenário 1: Finalização de Compra com Um Clique (Checkout Expresso)
Dado que já possuo um cartão de crédito salvo e endereço principal cadastrado
E estou com itens no carrinho
Quando eu seleciono a opção "Checkout Expresso"
Então o sistema deve processar o pagamento imediatamente utilizando os dados pré-existentes, ignorando as etapas de seleção manual

Cenário 2: Recuperação de Carrinho via Notificação Push
Dado que adicionei itens ao carrinho mas fechei o aplicativo sem finalizar a compra
E transcorreram 30 minutos desde a última atividade
Quando o gatilho de tempo for atingido
Então o sistema deve enviar uma notificação push com o texto: "Seus itens estão te esperando! Finalize agora e ganhe 5% de desconto"


