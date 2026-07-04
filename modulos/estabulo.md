# 🐴 MÓDULO — Estábulo

> **A camada que adiciona:** cavalos e carroças deixam de ser "transporte" e viram **patrimônio vivo** — com idade, genética, equipamento, estilo e mercado.

## O que muda no seu jogo

Sem estábulo, você anda no cavalo que aparecer. Com ele, você **cria, doma, equipa e negocia** — um catálogo com **175+ cavalos** e uma linha completa de **carroças** ($600 a $2.200, ou ouro).

## A dinâmica

```
COMPRAR ──► EQUIPAR ──► TRABALHAR ──► CRUZAR ──► VENDER
  loja       ferradura     XP sobe      potro       lucro
  ou doma    sela/bolsas                16h
```

1. **Comprar ou domar.** Na loja, cavalos vêm com 5–20 anos (potros 1–5). No mundo, cavalos **selvagens** podem ser domados — minigame de **arrastar no laço** (segure e controle a barra). Domou? **Salve no estábulo** (paga só ~1% do valor de tabela) ou **venda direto**.
2. **Equipar.** Sela ($800), bolsas ($1.000), coldre ($800), máscara ($500), crina/cauda/cores ($200–300) — e **ferraduras** (`Horse_Shoe`): cada nível dá **+3 de status** (velocidade/aceleração/curva), máx. 2 níveis. ⚠️ Ferraduras **desgastam com o uso** — recoloque.
3. **Cuidar.** Cavalos **envelhecem em tempo real** (~0,5 ano por dia real). Aos **30 anos** ficam velhos e podem morrer. Cure no estábulo quando machucar.
4. **Cruzar.** Acasalamento leva **16h reais** e custa proporcional ao valor dos pais. A chance de um cavalo nascer **fértil**: 30% ao comprar, 10% domado selvagem, 5% após cruzar — fertilidade é **rara e valiosa**. Itens de criador (*BreederFix*/*FemaleFix*) destravam reprodução em cavalos "estéreis".
5. **Vender.** Pela loja, pelo **mercado negro de cavalos**, ou no P2P — um potro de linhagem boa vale mais que muita colheita.

## Onde fica o quê

- Cavalo salvo em Valentine **fica em Valentine** — cada estábulo guarda os seus. Transferir entre estábulos: **$450**.
- O estábulo tem **storage próprio** (acesso só para quem você autorizar por ID).
- **Peles e carcaças** da caça vão no lombo do cavalo — o elo com o [Freezer](freezer.md).

## Comandos

| Comando | Faz |
|---------|-----|
| `/dv` | deleta seu cavalo/carroça na rua |
| `/mudarc` | muda como você senta no cavalo |
| *HorseTag* (item) | renomeia o cavalo |

## 💡 Dicas

- Ferradura barata em cavalo caro = **o melhor upgrade por dólar do módulo**.
- Doma de selvagens é a **renda inicial**: custo zero, minigame e revenda.
- Não deixe seu cavalo bom envelhecer parado — cavalo é ativo que deprecia.
- O ciclo completo de **criação de elite** (linhagens, Forja Glacial) está no [Cap.7 — Genética](../07-genetica.md).

> **Ficha técnica:** script `gum_stables` · catálogo em `configHorses.lua` (175+) e `configCarts.lua`.
