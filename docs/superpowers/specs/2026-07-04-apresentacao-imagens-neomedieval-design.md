# Design: Pacote de imagens para a apresentacao

Data: 2026-07-04

## Contexto

A apresentacao principal esta em `apresentacao.html` e tem 68 slides. Hoje ela nao usa imagens reais: a narrativa visual depende de tipografia, cards, tabelas, emojis, divisores escuros e a marca PANTANAL. A primeira melhoria deve aumentar ritmo e atmosfera sem refazer todo o deck.

## Objetivo

Criar e inserir uma primeira rodada de imagens para deixar a apresentacao mais dinamica, cinematografica e memoravel. Esta rodada cobre os slides mais importantes; depois, se a identidade visual estiver aprovada, o trabalho pode expandir para quase todos os 68 slides.

## Direcao visual aprovada

Referencia de qualidade: realismo cinematografico com textura, luz, camera e atmosfera no padrao de jogos como Red Dead Redemption 2, sem copiar personagens, marcas, cenas ou elementos proprietarios.

Conceito artistico proprio: ano 1494, fronteira neo-medieval faroeste, fazendas, animais, oficinas, comercio e sobrevivencia. O mundo deve parecer artesanal, bruto e historico: couro, ferro batido, madeira escura, barro, pedra, tecido cru, fumaca, tochas, fogueiras, estandartes, carrocas, currais, ferramentas primitivas, rios, pantano, mato fechado e estruturas de fazenda fortificadas.

O resultado deve parecer um mundo jogavel de fronteira rural arcaica, nao um faroeste moderno e nao uma fantasia medieval limpa.

## Escopo da primeira rodada

Gerar aproximadamente 25 a 35 imagens e aplica-las nos slides com maior ganho narrativo:

- Capa e encerramento.
- Divisores das 8 fases.
- Slides-chave de sobrevivencia, coleta, caca, fazenda, oficinas, modulos, industrias, cooperativas, genetica e exportacao.
- Alguns slides densos com cards ou tabelas receberao imagem lateral, vinheta, textura ou faixa visual para quebrar a monotonia.

Nao cobrir todos os 68 slides nesta rodada. A expansao total fica para a proxima fase, depois da validacao visual.

## Tipos de imagem

1. Imagens hero ou background:
   - Wide cinematic stills, 16:9.
   - Usadas em capa, fim e divisores de fase.
   - Devem aceitar overlay escuro e texto grande legivel.

2. Imagens laterais:
   - Composicoes com sujeito em uma lateral e espaco negativo na outra.
   - Usadas em slides de conteudo para apoiar cards e tabelas.

3. Vinhetas de sistema:
   - Cenas menores ou detalhes de objetos: bancada, fogueira, cantil, faca, sementes, ferraria, freezer rustico, alambique, estandarte, caixas de exportacao.
   - Usadas para dar contexto visual sem competir com texto.

4. Texturas e atmosferas:
   - Madeira, couro, metal, mapas, papel envelhecido, lama, marcas de ferramenta.
   - Usadas com baixa opacidade quando uma imagem figurativa atrapalhar a leitura.

## Uso de personagens

Personagens humanos podem aparecer com moderacao: cacadores, trabalhadores de rancho, ferreiros, herbalistas, barqueiros, condutores de gado, geneticistas ou comerciantes. Eles devem funcionar como silhueta narrativa ou escala humana. O foco principal continua sendo o mundo, os sistemas, os animais, as oficinas e a fazenda.

Evitar retratos heroicos repetidos, rostos modernos, roupas modernas, armas de fogo modernas, UI dentro da imagem, texto gerado dentro da imagem, logos e qualquer referencia direta a marcas conhecidas.

## Aplicacao no HTML

Manter o deck em HTML. As imagens finais devem ser salvas dentro do projeto, preferencialmente em `assets/apresentacao/`.

A implementacao deve adicionar uma camada visual reutilizavel em CSS, sem reescrever a apresentacao inteira:

- Classes para slide com imagem de fundo.
- Classes para imagem lateral.
- Overlay escuro/claro para preservar legibilidade.
- Ajustes especificos para slides densos quando necessario.

As imagens devem ser referenciadas por caminhos locais relativos ao HTML, nunca por caminhos temporarios externos.

## Criterios de aceite

- O deck continua navegavel em `localhost:61128/apresentacao.html`.
- As imagens aparecem corretamente no navegador.
- O texto principal continua legivel em slides claros e escuros.
- Nenhuma imagem importante fica coberta por HUD, botoes de navegacao ou contadores.
- A direcao visual parece coesa: realista, cinematografica, neo-medieval faroeste, 1494, com fazendas e animais como centro do mundo.
- A primeira rodada nao deixa o arquivo pesado a ponto de prejudicar a navegacao local.

## Fora de escopo nesta rodada

- Gerar imagem para todos os 68 slides.
- Converter a apresentacao para PowerPoint.
- Refazer a estrutura completa do deck.
- Inserir imagens com texto interno.
- Usar assets de terceiros pesquisados na web como base principal.
