# 🍺 MÓDULO — Destilaria & Bar

> **A camada que adiciona:** o **submundo**. Um negócio ilegal completo — produção de moonshine, bar clandestino, compradores do crime e a lei na sua cola.

## O que muda no seu jogo

É o módulo de **maior risco e maior personalidade**: você monta um bar escondido, instala alambiques, produz bebida e vende para o submundo. Tudo dentro do RP de ilegalidade — com fumaça, denúncia e xerife.

## A dinâmica (o ciclo do contrabando)

1. **Monte o bar**: use um item de interior (*moonshine_interior1–7*) para criar a entrada. **1 bar por jogador.**
2. **Instale alambiques** (itens utilizáveis, **máx. 2 por jogador**). Cada um tem **10 níveis de XP** e **durabilidade própria**:
   - 🥃 **Destilaria Artesanal** *(still01)* → do básico ao **Moonshine de Sangue**.
   - ⚗️ **Destilaria Química** *(still02)* → destilados premium, **explosivos e munições especiais**.
   - 🍺 **Livro do Bar (Destilaria Avançada)** → produção **em lote (×11)**: aguardente, cachaça, bourbon, cerveja, vodka, whisky...
3. **Consiga ingredientes**: zonas de coleta (amora, amora-preta, uva) + insumos de fazenda (água filtrada, fermento, frascos, grãos secos) — a Plantação e o Fermentador alimentam o crime.
4. **Produza** (multiplicador até ×5; mais volume = mais tempo e mais desgaste do alambique — **repare!**).
5. **Venda**: abra o menu do negócio, escolha um **comprador NPC** (cada um exige **reputação** mínima), aceite a missão, chame a carroça com **`/bar`** e entregue no prazo. O dinheiro cai no **cofre do negócio**.

## ⚠️ Os riscos (é ilegal MESMO)

- A **fumaça da produção é visível** para outros jogadores.
- Após cada entrega: **30% de chance de denúncia** aos xerifes.
- **Bandidos podem roubar sua carroça** de entrega; missão falha desconta do cofre.
- Jogadores podem plantar **dinamite** no seu alambique (30s para desarmar com lockpick).
- Xerifes com autorização podem **queimar o bar**.

## 👥 O negócio é gerenciável

- **Cofre** com saldo do negócio, **equipe autorizada** (adicione membros por ID), baú do bar e **preço de entrada** (`/barcobrar`).
- **Reputação** sobe a cada entrega → destrava compradores melhores → preços melhores.

## Comandos

| Comando | Faz |
|---------|-----|
| `/bar` | chama a carroça de entrega (com missão aceita) |
| `/barcobrar <valor>` | define o preço de entrada do bar (dono) |
| `/barload` | recarrega interiores após restart |

## 💡 Dicas

- Produza no ritmo da durabilidade — alambique zerado no meio do lote é prejuízo.
- Suba reputação com entregas pequenas antes de aceitar as grandes.
- Localização do bar é estratégia: perto demais da cidade = lei; longe demais = logística cara.

> **Ficha técnica:** script `fx-moonshinev2` · também documentado como oficina VIP **4.15** no [Cap.4](../04-oficinas.md).
