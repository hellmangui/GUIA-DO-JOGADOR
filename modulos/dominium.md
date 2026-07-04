# ⚔️ MÓDULO — Dominium (Famílias & Territórios)

> **A camada que adiciona:** política de rua. Sua família/gangue **marca território com grafite**, ativa **buffs territoriais**, faz **missões de dominação** e disputa o mapa com as outras.

## O que muda no seu jogo

O Dominium transforma grupos de amigos em **organizações com poder territorial**. Onde sua família domina, o mundo joga a seu favor: NPCs aliados, roubo passivo, resistência extra. Onde não domina... cuidado.

## A dinâmica

1. **Entre (ou funde) uma família.** O painel principal abre com **`/dominio`** perto do ponto da família (o líder define o local com `/setgangmenu` — 1 local ativo, cooldown para mudar).
2. **Marque território**: use a **lata de tinta** (*paintcan*) nos **pontos de grafite** espalhados pelo mapa. Grafite seu na parede = área dominada. Viu grafite inimigo? **`/delgraffiti`** apaga (por cima, RP de guerra de tinta).
3. **Faça missões**: **6 missões** (diárias e especiais, reset a cada 24h) — incluindo **sabotagem de postes de telégrafo** (escalada com minigame). Missões dão XP e avançam a dominação.
4. **Evolua e ative buffs** com o XP e as **Moedas Imperiais** da família.

## Os buffs territoriais

| Buff | Nível | Efeito na área dominada |
|------|-------|------------------------|
| 🕵️ Mestre do Roubo | 1 | seus NPCs **furtam jogadores** de passagem — o líder saca o caixa no menu |
| 🛡️ Reforços NPC | 5 | NPCs aliados **protegem e seguem** os membros |
| 🗺️ Domínio Territorial | 5 | revela os pontos de território no mapa da família |
| 💪 Resistência da Família | 10 | membros **mais resistentes** em território dominado |

## O menu da família

Missões · **Território em tempo real** (estatísticas do que está dominado) · **Baú da família** · Gestão de membros · Buffs. Só o **líder** compra buffs, gerencia membros e saca o dinheiro do pickpocket.

## 💰 Como ganhar dinheiro

- **Pickpocket passivo**: área movimentada dominada = caixa pingando.
- **Missões de dominação**: recompensas diretas + Moedas Imperiais.
- **O intangível**: território é vantagem em TODO conflito — quem domina, cobra.

## 💡 Dicas

- Priorize dominar **onde sua família realmente circula** — buff em área morta é tinta jogada fora.
- **Vigie seus grafites**: outra família pode sobrescrever e virar a área.
- Chegue ao **nível 5 rápido** (Reforços + mapa) — é quando o módulo liga de verdade.
- Par perfeito com o [Estandarte da Família](estandarte-familia.md): o Dominium dá o poder de rua, o Estandarte dá a base física.

> **Ficha técnica:** scripts `dodi_paintwall` + `dodi_gangmissions` (+ props `grafite_dodi`) · grafites em pontos pré-mapeados (limitação do RedM: props 3D, não textura).
