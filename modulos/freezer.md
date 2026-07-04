# 🧊 MÓDULO — Freezer (Frigorífico)

> **A camada que adiciona:** a caça ganha uma **indústria**. A carcaça inteira entra congelada e sai em **cortes nobres** — que valem mais no açougue e são exigidos pelos melhores pratos da Cozinha.

## O que muda no seu jogo

Sem freezer, caça é "carne crua no açougue". Com ele, você processa **77 tipos de carcaça** — do coelho ao **touro, bisão, urso e alce** — em cortes evoluídos que **valem mais** e destravam receitas.

## A cadeia completa

```
🏹 CAÇAR ──► 🧊 FREEZER ──► 🔪 PROCESSAR ──► 💰 AÇOUGUE (vender)
 (caça)      carcaça inteira    cortes nobres └─► 🍲 COZINHA (pratos!)
```

1. **Cace** e traga a carcaça **inteira** (no lombo do cavalo — o elo com o [Estábulo](estabulo.md)).
2. **Deposite no freezer**: aproxime a carcaça e adicione. Animais grandes contam — touro, bisão, urso, alce entram.
3. **Processe**: a carcaça vira **cortes evoluídos** — carne seca, carne de caça curada, filé de veado, filé de caça, carne moída, costelinha de porco, ave exótica preparada...
4. **Lucre em duas pontas**: venda os cortes no **açougue** — ou leve para a **Cozinha/Cozinha Rara**, onde os melhores pratos **exigem** esses cortes (o prato vale mais que o corte, que vale mais que a carne crua).

## 🔧 O freezer é uma máquina (e máquina desgasta)

- **Toda ação consome condição** (adicionar carne, processar, fazer linguiça...).
- Abaixo de **50% de condição**, o freezer **para de trabalhar**.
- **Reparo**: martelo de reparo + **5 parafusos** por conserto (+5% de condição). Mantenha estoque de parafusos — a Ferraria faz.
- Tem **gelo** para gerenciar e o **dono pode definir preço de uso** para outros jogadores — sim, freezer é ponto de renda passiva.

## 💰 Como ganhar dinheiro

- **Margem por processamento**: mesmo animal, mais dólares — o corte processado vale mais que a carne crua.
- **Fornecedor de cozinha**: cozinheiros compram corte nobre continuamente (buff de comida move o servidor).
- **Freezer público**: cobre taxa de uso de caçadores sem módulo.

## 💡 Dicas

- Caça grande primeiro: touro/bisão/alce rendem os cortes de maior valor por viagem.
- Não deixe a condição bater em 50% no meio de um lote — repare aos 60%.
- Feche parceria fixa com um cozinheiro: pedido recorrente > venda avulsa.

> **Ficha técnica:** script `ricx_freezer` · 77 carcaças mapeadas · integra caça (`sirevlc_hunting_script`), açougue (`sirevlc_butcher`) e cozinha (`fx-craft`).
