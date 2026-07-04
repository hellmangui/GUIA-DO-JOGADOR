# 🚜 CAPÍTULO 3 — A Fazenda (os Núcleos)

> **Fase 3 da Linha do Tempo.** A fazenda é a base de quase tudo no servidor. Ela é feita de **3 núcleos** — os grupos de recursos que dão **vida e identidade** à propriedade:

| Núcleo | O que é | Sistema |
|--------|---------|---------|
| 🏡 **Casa** | moradia, storage, chaves, mobília, upgrades | `gum_housing` |
| 🐄 **Rancho / Pecuária** | animais, cochos, produtos, reprodução | `gum_ranch` |
| 🌱 **Plantação / Agricultura** | solo, sementes, irrigação, colheita | `gum_farming` |

Os núcleos **escalam com o tier da fazenda** (1→5): a Moradia vira Mansão Rural e Grande Casa Senhorial, o Rancho Inicial vira Rancho Imperial, a Horta Básica vira Plantação Máxima. Dois deles são motores que se alimentam mutuamente:

```
        ┌──────────── O LOOP SAGRADO ────────────┐
        │                                        │
   🌱 PLANTAÇÃO ──grãos/feno──► 🧺 RAÇÃO ──► 🐄 RANCHO
        ▲                                        │
        └───────── fertilizante (cocô) ◄─────────┘
```

## 🏡 Casa

O núcleo que dá **vida** à propriedade — é nela que você mora, guarda e gerencia.

- **Gestão** com **`/minhacasa`**. Compre (revende com taxa de volta) ou **alugue** — cobrança a cada **7 dias**, pré-pague até **4 semanas**. Sem casa ainda? **Quartos de hotel** (Valentine etc.) por ~$5 com baú de 30.
- **Chaves & acesso** (administração social): dê acesso a quem confia. ⚠️ Portas trancadas podem ser **arrombadas com lockpick** — não deixe destrancado.
- **Storage pessoal** + **guarda-roupa** (troca de roupas em casa).
- **Mobília**: construa e posicione móveis com os livros de construção (*Build Book* / *Interior Book*) — centenas de opções.
- **Upgrades da casa por nível**: cada nível pede **kits de construção** (20 → 50 kits, madeira ou pedra) — os kits saem da **Marcenaria** ([Cap.4](04-oficinas.md)). A casa cresce com as suas oficinas.
- 🌱 **Plantar dentro de casa**: até **100 plantas** dentro da propriedade, **protegidas automaticamente** — a estufa do early game.

## 🌱 Plantação

### O ciclo completo

1. **Enxada na mão** → marcar terreno → **preparar** o solo
2. **Plantar** a semente (sem a enxada na mão!)
3. Cuidar até crescer: **regar**, **fertilizar**, **cuidar**, **eliminar pragas**
4. **Colher**

**Ferramentas de rega** (cada uma rende mais): balde (10 usos, 1 planta por vez) → **regador** (16 usos, molha **3 plantas** de uma vez) → **carroça d'água** (até 200 de capacidade).

### O que decide sua colheita

- **Água**: abaixo de 40%, a planta definha. Calor = gasta mais água. **Chuva rega de graça.**
- **Fertilizante**: comum (+10) ou grande (+50). O melhor fertilizante é **de graça: o cocô do seu rancho**.
- **Pragas**: 15% de chance; derrubam qualidade e crescimento. **Espantalho** reduz o risco.
- **Frio** atrasa o crescimento. Cada região tem sua temperatura.
- Resultado: a **qualidade** da colheita reflete o seu cuidado (e define o preço).

### Sementes (26+)

| Grupo | Sementes |
|-------|----------|
| Grãos & industriais | trigo, milho, soja, arroz, feijão, café, algodão, tabaco, cana-de-açúcar |
| Hortaliças | alface, brócolis, cenoura, batata, tomate, cebola roxa |
| Frutas | maçã, laranja, limão, uva, coco, banana |
| Especiais | cholla, semente sagrada Mbaraeté... |

- Não pode plantar dentro das cidades. Fazendas alheias são protegidas.
- **NPC Fazendeiro**: contrate um ajudante para acelerar o trabalho.
- **Irrigação e arado**: sistemas de tubos, bombas e plantio em linha para fazendas grandes (evolução natural da sua plantação).

## 🐄 Rancho

### Começando

- Compre ou **alugue** um rancho (aluguel semanal; dá para pré-pagar 4 semanas). Gerencie tudo com **`/fazenda`**.
- Compre animais (macho/fêmea): **vaca, galinha, ovelha, cabra, cavalo, porco**.

### O dia a dia

| Tarefa | Como |
|--------|------|
| Alimentar | encher o **cocho** de comida (cada espécie tem sua ração) e **água** |
| Tratar | remédio quando doente, **carinho** sempre (sim, funciona) |
| Coletar produto | **clique esquerdo** no animal (minigame) |
| Limpar | o cocô acumulado vira **FERTILIZANTE** — ouro para a plantação |
| Localizar animal | `/animal` |

### O que cada animal dá

| Animal | Produto |
|--------|---------|
| Vaca | **leite** (queijo no Fermentador!) |
| Galinha | **ovos**, penas |
| Ovelha | **lã**, couro de ovelha |
| Cabra | leite de cabra |
| Porco | gordura, carne |
| Cavalo | potros (criação/venda) |

- Animais **envelhecem** e podem morrer de velhice. A **satisfação** (comida+água+saúde+carinho) define o quanto produzem.
- Animais também têm **XP e nível (0→10)**: um animal bem cuidado e experiente produz até **1,9× mais**. Cuidar do mesmo animal por anos compensa.
- O **cocho é dividido**: metade da capacidade para comida, metade para água (ex.: cocho de 200 kg = 100 + 100).
- **Fertilizante**: limpe o cocô com o **rastelo** — animal satisfeito rende até **4 fertilizantes** por limpeza.
- **Vender animais**: conduza-os até os pontos de venda (Valentine, Emerald Ranch).
- O rancho tem **armazém** próprio (capacidade 500). Cavalos criados podem ser montados a partir de **4,5 anos**.

### Estações de trabalho (rancho)

- `/estacao` — lista as estações disponíveis e seus IDs
- `/trabalhar <id>` — executa o trabalho da estação
- `/marcarlocal <id>` / `/resetarlocal <id|all>` — posicionar estações

### Reprodução (o começo da genética)

- **Nascimento assistido**: prompt **G** na fêmea prenha (requer kit de inseminação especial).
- **Inseminação artificial**: kit de inseminação + sêmen — a qualidade do sêmen (fraco/médio/forte) define a chance e a linhagem da cria. O caminho para animais de elite passa pela **Criogenia** ([Capítulo 7](07-genetica.md)).

## 💡 Bootstrap: como começar sem nada

1. Compre **sementes e ração nas lojas** (Loja do Agricultor, Loja Rancho) — preço-teto, mas destrava.
2. Plante o básico: **trigo, milho e maçã** (viram ração no futuro Zelador).
3. Primeiro animal: **galinha** (barata, bota ovo, come milho).
4. Reinvista: colheita → venda → mais animais → fertilizante grátis → colheita melhor.
5. Quando o loop girar sozinho, é hora das **oficinas** ([Capítulo 4](04-oficinas.md)).

## ✅ Checklist para sair da Fase 3

- [ ] **Casa** com chaves gerenciadas, storage organizado e mobília básica
- [ ] Plantação produzindo com qualidade estável
- [ ] Rancho com animais alimentados e produzindo (e subindo de nível)
- [ ] Loop fertilizante ⇄ ração girando
- [ ] Estoque de grãos, leite, ovos, lã e couro

➡️ **Próximo: [Capítulo 4 — Oficinas & Produção](04-oficinas.md)**
