# 📦 MÓDULO — Entregador

> **A camada que adiciona:** uma **profissão de estrada com carreira** — XP, licença, frota própria e a regra de ouro do frete: *palavra vale dinheiro*.

## O que muda no seu jogo

É o módulo de renda mais acessível: você **pega caixas nas lojas e entrega de carroça**. Mas tem profundidade de carreira — níveis, licença oficial e carroças cada vez maiores.

## A dinâmica (frete a frete)

1. **Pegue o contrato** na loja: cada caixa junta até **30 itens**, pagando **$0,50 por item** (caixa cheia ≈ $15).
2. **Carregue no braço**: as caixas são **props físicos** — você pega uma a uma e põe na carroça (nada de mágica; nem corra com caixa na mão).
3. **Viaje** até o destino marcado.
4. **Descarregue** também na mão, caixa por caixa. Frete concluído = dinheiro + **30 XP**.

**Falhou na entrega?** Dói de verdade: **-50 XP** e você paga **metade do frete do próprio bolso** (anti-abuso — a mercadoria saiu da loja).

## A carreira

| Nível | Título | Destrava |
|-------|--------|----------|
| 1–2 | Beginner / Novice | carroças alugadas do NPC |
| **3** | Apprentice | **Licença de Tradesman** → usar **carroça própria** (6–10 caixas) |
| 4 | Journey Man | supplywagon (12 caixas) |
| 5 | Trades Man | chuckwagon / gatchuck (**14 caixas**) |

Mais caixas por viagem = mais dólares pela mesma estrada.

## 📜 A licença é um item de verdade

- A **Licença de Tradesman** tem o **nome do dono** gravado (metadata) — a lei pode pedir seus documentos na estrada.
- Emprestar licença não cola na configuração atual (**só o dono usa**).
- Dá para **perder** a licença — cuide dela como do cavalo.

## 💡 Dicas

- Alugue carroça do NPC até o nível 3 — não trave sua grana em carroça antes da licença.
- Rota cheia > rota rápida: espere a caixa fechar com 30 itens.
- A carga é visível na carroça — **fretes valiosos atraem olhares**. Leve companhia em rota erma.
- Sinergia com o [Estábulo](estabulo.md): carroça própria maior é literalmente seu teto de renda.

> **Ficha técnica:** script `outsider_deliveryman` · XP "Entregas" no core · props aleatórios por categoria (comida, bebida, ferramentas, armas).
