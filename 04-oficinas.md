# 🔨 CAPÍTULO 4 — Oficinas & Produção

> **Fase 4 da Linha do Tempo.** Aqui a matéria-prima vira produto — e o produto vira fortuna.

## Como funciona o craft avançado

- Cada oficina é uma **bancada** (colocável na sua fazenda) com um **livro de receitas**.
- Receitas têm **nível exigido** — craftar dá **XP** e sobe seu nível naquela oficina.
- Produção leva **tempo real** (fila de pedidos, até 10) e algumas receitas têm **chance de falha**.
- **Fazendas vão do TIER 1 ao 5.** Cada fazenda tem **um tier** dessas oficinas, e o tier define o que elas destravam. Uma **fazenda Tier 5 libera todos os itens**.

> ⚠️ **Não confunda com PvP.** O *Forno / Forja Industrial*, a *Cozinha Rara* e as forjas de guerra são do sistema **PvP** — não são oficinas de fazenda. E o *Artesanato Especial* é uma bancada **urbana de Saint Denis**, não da fazenda.

---

# 🟢 BLOCO 1 — Oficinas BASE (toda fazenda tem)

Estas **vêm com toda fazenda** e escalam com o **tier (1→5)**. Não são VIP — são a base de trabalho que põe a fazenda para funcionar.

### 4.1 — 🌾 Secagem (Estendal)
**Consome:** colheitas frescas, peles cruas • **Produz:** trigo seco, milho seco, café torrado, pele seca...
Existe em **3 versões**:
- **Pequeno (Nível 1):** já disponível **na Bancada de Sobrevivência** — é assim que você seca desde o minuto zero, sem travar.
- **Médio (Nível 2):** virá no **craft dos Produtos Regionais** — *ainda não implementado*.
- **Grande (Nível 3):** versão **VIP**, de maior capacidade.

### 4.2 — ⚙️ Prensa (Grande + Pequena)
**Consome:** secos • **Produz:** **farinha** de trigo/soja/milho, **pó de café**, **açúcar refinado**, algodão prensado
A Prensa Grande é **alugável** (E aluga, R usa, H retira). A ponte entre o campo e a cozinha.

### 4.3 — ⚒️ FERREIRO *(módulo — 2 oficinas · tier 1→5)*
A **profissão da metalurgia**. Um módulo, **duas oficinas** que trabalham em par:
- **Oficina 1 — Forja** *("Usar Forja")* → **trabalha o material**: minério + carvão → **lingotes**, chapas, componentes, peças.
- **Oficina 2 — Ferramentas** *("Fabricar Ferramentas")* → **cria o produto**: lingotes → **ferramentas de metal** (fazenda, estábulo, destilaria, médicas) e coletores.

Adeus ferramentas de pedra. O primeiro molde de lingote você compra na loja.

### 4.4 — 🪵 ARTESANATO *(módulo — 2 oficinas · tier 1→5)*
A **profissão dos componentes e produtos**. Também um módulo com **duas oficinas em par**:
- **Oficina 1 — Primários** *("Artesão Primários")* → **trabalha o material**: tábuas, couro, vidro bruto, óleo → madeira trabalhada, **vidro polido**, cordas/tiras de couro, **lã**, **tecidos**.
- **Oficina 2 — Produtos** *("Oficina de Artesanato")* → **cria o produto**: componentes → **sacos de pano**, frascos de vidro, kits, **ferramentas da fazenda**, agricultura, estábulo.

O **saco de pano** (feito aqui) está em TUDO.

> ⭐ **O diferencial do servidor são esses dois módulos — Ferreiro e Artesanato.** Cada um é **1 profissão = 2 oficinas** (uma trabalha o material, a outra cria o produto), e ambos sobem por tier. São eles que fabricam a maior parte das coisas da fazenda.

### 4.5 — 🧺 Zelador *("Cuidado dos Animais")*
**Consome:** trigo, milho, maçã, feno + sacos de pano (ferramenta: rastelo) • **Produz:** **RAÇÕES de todos os animais**, cubos de feno, remédios de animais, fertilizantes
**Fecha o loop do rancho**: nunca mais compre ração.

### 4.6 — 🧀 Fermentador
**Consome:** leite, soja, sal mineral • **Produz:** **queijo**, leite fervido, **óleo vegetal**, **água filtrada**, fermentos, vinagres, sal de cozinha
O destino do leite do seu rancho. O óleo vegetal é insumo de metade das oficinas.

### 4.7 — 🌿 Bancada de Ervas
**Consome:** ervas + frascos + água filtrada + álcool • **Produz:** misturas de folhas, **remédios Mbaraeté**, remédios derivados, ferramentas do xamã
A farmácia do Pantanal — do chá curativo aos remédios de doenças graves.

---

# 👑 BLOCO 2 — Oficinas VIP (especialização)

Estas são **opcionais**: a fazenda **se especializa** escolhendo quais oficinas VIP montar, ganhando mais opções de produção. Não vêm por padrão.

### 4.8 — 🪚 Marcenaria
**Consome:** toras + **pregos** (do Ferreiro!) • **Produz:** tábuas, vigas, **kits de construção**
Bancada comprável (máx. 2 por jogador), com minigame de martelo. **Sem Ferreiro, sem Marcenaria.**

### 4.9 — 🎒 Coureiro (base + mochilas)
**Consome:** couros + fitas + linhas + óleo • **Produz:** painéis de couro, tecidos, lã trabalhada → **MOCHILAS**
Das mochilas iniciais às de trabalho e especiais: **mais carga muda o jogo inteiro**.

### 4.10 — 🍲 Cozinha
**Consome:** farinhas, ovos, leite fervido, queijo, carnes, açúcar • **Produz:** massas, pratos regionais, **marmitas**, bebidas
A melhor comida do jogo (buffs melhores que qualquer carne de fogueira). *(A Cozinha Rara é PvP, não entra aqui.)*

### 4.11 — 🧬 Criogenia / Manipulador Genético
**Consome:** kits de inseminação, frascos, pinças metálicas • **Produz:** **sêmen pronto** (bovinos/equinos), hormônios
A bancada do **melhoramento genético**: gera o sêmen que inseminação e procriação usam. Ver [Cap.7 — Genética](07-genetica.md).

### 4.12 — 📮 Ensacamento (Posto Comercial)
**Consome:** farinhas, grãos, tabaco, café + saco de pano (ferramenta: faca do coureiro) • **Produz:** **sacas de 30 kg**
A bancada da **venda em atacado**. É o **maior livro do jogo** (152 receitas).

### 4.13 — 🐂 Procriador
**Consome:** sêmen de boi (fraco/médio/raça), sangue e extrato bovino, frascos • **Produz:** **sêmen de raça/marruá** → **linhagem melhor**
O par da Criogenia no ciclo de genética. Ver [Cap.7 — Genética](07-genetica.md).

### 4.14 — 🦫 Armação de Couro *(VIP · job-locked)*
**Consome:** pele seca, couros crus • **Produz:** **couro cru → couro refinado** (médio/grande)
Bancada **travada por job** (`ricx_hideframe`). Refina a própria pele, poupando quem compraria. **O couro comum vem da loja.**

### 4.15 — 🍺 DESTILARIA & BAR *(VIP · módulo — 2 oficinas · fx-moonshinev2)*
O **negócio ilegal de moonshine**. Mesmo padrão dos módulos Ferreiro/Artesanato: **duas oficinas em par**, cada uma com **10 níveis de XP próprios** e **durabilidade** que se degrada com o uso (repare!):
- **Oficina 1 — Destilaria Artesanal** 🥃 *(still01)* → destilados básicos até o **Moonshine de Sangue**; cada nível melhora a qualidade.
- **Oficina 2 — Destilaria Química** ⚗️ *(still02)* → **destilados premium, explosivos e munições especiais** (níveis independentes).
- **Livro do Bar — Destilaria Avançada** 🍺 → **produção em lote (×11)** para abastecer o bar: aguardente, cachaça, cevada, álcool puro industrial, bourbon, saquê de soja + Moonshine Original, cerveja, vodka e whisky.

E o **Bar clandestino** fecha o ciclo: cofre do negócio, equipe autorizada, **reputação** e **entregas de carroça** (`/bar`) para compradores NPC.
**Riscos reais:** a fumaça da produção é visível, bandidos podem roubar sua carroça, há chance de denúncia após cada venda — e xerifes podem **queimar o bar**.

### 4.16 — 🏕️ ESTANDARTE DA FAMÍLIA *(VIP · módulo Domínio)*
As oficinas do **acampamento da família** (sistema Dominium, painel `/dominio`). Plantar o estandarte transforma a fazenda em **território PvP** — em troca, a família ganha oficinas coletivas:
- **Panelão de Caldos** 🍲 *(Tier 3+)* → **ensopados coletivos** (Arroz Carreteiro, Ensopado Quente de Colter, de Peixe do Mar, de Saint Denis) — buffs para o grupo inteiro.
- **Mesa de Açougue / Armadilheiro** → transforma **materiais + suprimentos em estoque**, que libera **missões de entrega** (25/50/100 de estoque) com títulos de exportação como recompensa.
- **Estruturas de apoio:** baús da família, barril de água, caixa de cerveja, tendas e guarda-roupa.

> ⚔️ **Trade-off consciente:** o Estandarte é opcional — ativar o Domínio traz oficinas e missões de família, mas suas terras entram na dinâmica **PvP territorial**. Ver [Cap.5 — Indústrias & Negócios](05-industrias-e-negocios.md).

---

## Mapa de dependências (visão geral)

```
COLETA               FAZENDA                OFICINAS
──────               ───────                ────────
ervas ────────────────────────────────────────► Bancada de Ervas
lenha ──────────────► toras ──────────────────► Marcenaria (VIP) ──► Artesanato ─┐
mineração ──► minérios ──► FERREIRO: Forja → lingotes → Ferramentas → ferramentas │
caça ──► peles ──► couro (loja / bancada VIP) ──► Artesanato / Coureiro ──► MOCHILAS│
plantação ──► grãos ──► Secagem ──► Prensa ──► farinhas ──► Cozinha / Ensacamento  │
rancho ──► leite ──► Fermentador ──► queijo/óleo ──► Cozinha                       │
rancho ──► Criogenia + Procriador ──► sêmen de raça ──► rebanho melhor             │
plantação+rancho ──► Zelador ──► rações ──► rancho (loop!)                         │
                                          ARTESANATO: Primários → Produtos ◄────────┘
                                          (sacos, frascos, kits → TODO MUNDO)
```

## ✅ Checklist para sair da Fase 4

- [ ] **Oficinas base de pé:** Secagem, Prensa, o módulo **Ferreiro** (Forja + Ferramentas) e o módulo **Artesanato** (Primários + Produtos), Zelador, Fermentador, Ervas
- [ ] Cadeia da farinha girando (secagem → prensa)
- [ ] Ferramentas de metal substituindo as de pedra
- [ ] Ração própria (Zelador) e queijo próprio (Fermentador)
- [ ] Pelo menos **uma especialização VIP** escolhida (Marcenaria, Coureiro, Cozinha...)
- [ ] **VIPs de negócio avaliados:** Destilaria & Bar (moonshine) e Estandarte da Família (Domínio · PvP) — opcionais, mas mudam o jogo
- [ ] Mirando subir o **tier da fazenda** (rumo ao Tier 5 = tudo liberado)

➡️ **Próximo: [Capítulo 5 — Indústrias & Negócios](05-industrias-e-negocios.md)**
