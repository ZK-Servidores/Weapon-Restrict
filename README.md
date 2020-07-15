# Weapon Restrict
Esta é uma versão modificada do bem conhecido *Weapon Restrict*.

## Principais mudanças
- Removidos *todos* nativos por velocidade. Duvido que muitos tenham usado, se é que o fizeram;
- Controle completamente removido sobre o treino e rodadas especiais. Este é um plugin para controlar a quantidade de armas e muito mais;
- Melhor desempenho de todo o plugin, agora é menos exigente;
- Os encaminhamentos foram alterados, o que significa que os plugins para outra versão podem não ser compatíveis com esta;

## Descansar
- Transição para a nova sintaxe;
- Cvars são traduzidas para o russo;
- O menu é ligeiramente alterado;
- Adicionado nativo para emitir imunidade;
- Alterado o nome do arquivo *include*; **(restrict > weapon_restrict)**.
- Alterou o nome da pasta do *código fonte*; **(restrictinc > weapon_restrict)**.
- Som removido; Você já usou?

## Nos planos
- Recicle o menu, torne-o mais informativo e conveniente;
- Adicione uma classificação adequada de armas ao menu;
- Otimização adicional;

Antes da arma, o valor de proibição para ambas as equipes é indicado.
![Menu](http://hlmod.ru/attachments/upload_2017-10-9_22-34-34-png.26198/)

A maioria dos cvars na nova versão é igual à antiga.

A configuração geral *weapon_restrict.cfg* é criada automaticamente na pasta de configuração padrão do sourcemod.

Mais detalhes: [Weapon Restrict](http://hlmod.ru/resources/weapon-restrict-forked.620)

sm_restrict_*_ct - Desativa o valor para CT .
sm_restrict_*_t - valor para a proibição T .

Onde * é o nome da arma. ( ak-47 , m4a1 )

Um valor de -1 significa acesso total a armas. (Padrão)
Um valor 0 significa que não há armas.
Números maiores que 1 e acima significam o número máximo de unidades selecionadas simultaneamente de uma determinada arma por uma equipe.

sm_allow_restricted_pickup - Ativa / desativa a proibição. [ 0 ]
sm_weapon_restrict_immunity - Ativa / desativa a imunidade para administradores. [ 0 ]

Para alterar o sinalizador de imunidade, configure o sinalizador necessário para o comando sm_restrict_immunity_level em admin_overrides.cfg . [O sinalizador padrão é " a "]

sm_weapon_restrict_print_delay - intervalo entre as mensagens de proibição. 0 - desligue. [ 5.0 ]

sm_perplayer_restrict - Ativa / desativa a proibição de armas, dependendo do número de jogadores no time. [ 1 ]
sm_perplayer_bots - conta bots. [ 1 ]
sm_perplayer_specs - contagem de observadores. [ 1 ]

sm_weapon_restrict_remove_weapon - Remoção de armas proibidas ao tentar pegar. [ 0 ]

Cvars para Counter-Strike: Source:

sm_weapon_restrict_max_money -A quantia máxima de fundos que um jogador possui. [ 16000 ]
