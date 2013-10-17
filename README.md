# VIM-IDE #

Vim settings otimizado para uso com Python/Django, PHP, Javascript, HTML e CSS.

![vim-ide](https://github.com/rafael84/vim-ide/raw/master/img/overview.png)


## PRÉ-REQUISITOS ##

    sudo apt-get install exuberant-ctags


## INSTALAÇÃO ##
 
1. Faça um clone do projeto para ~/.vim-ide e inicialize os sub-módulos:
        
        git clone https://github.com/rafael84/vim-ide.git ~/.vim-ide
        cd ~/.vim-ide && git submodule init && git submodule update
        
2. Crie links simbólicos para o arquivo .vimrc e para o diretório .vim:

        ln -snf ~/.vim-ide/vimrc ~/.vimrc
        ln -snf ~/.vim-ide/vim ~/.vim

3. Instale o Vudle para gerenciamento dos plugins

        vim +BundleInstall +qall

4. Obrigado por voar com o Vim!


OBS.: Para atualizar uma instalação já existente, o melhor é remover o diretório ~/.vim-ide e 
repetir os passos 1 a 4, listados acima.


## PLUGINS ##

* **tpope/vim-fugitive** - Integração com GIT.
* **Lokaltog/vim-powerline** - Barra de status incrementada.
* **vim-scripts/surround.vim** - Diversos atalhos úteis envolvendo "surroundings": parenteses, colchetes, tags, e muito mais.
* **vim-scripts/nginx.vim** - Highlight de configurações do NGINX.
* **nvie/vim-flake8** - Validação de código Python.
* **majutsushi/tagbar** - Janela que mostra a estrutura do arquivo atual (classes, funções variáveis, etc). 
* **pangloss/vim-javascript** - Melhor tratamento para código javascript, especialmente quando este está embutido em uma página HTML.
* **scrooloose/syntastic** - Aponta onde há problemas no código fonte atual.
* **rstacruz/sparkup** - Disponibiliza diversos templates para arquivos HTML.
* **vim-scripts/tComment** - Facilita comentar / descomentar blocos de código.
* **kien/ctrlp.vim** - Excelente para achar um arquivo rapidamente, digitando caracteres que façam parte do path do mesmo.
* **docunext/closetag.vim** - Fecha tags automaticamente, especialmente útil para páginas HTML.
* **Rykka/riv.vim** - Excelente para se trabalhar com textos utilizando a linguagem de marcação reST.
* **spf13/vim-colors** - Alguns colorschemes interessantes.
* **scrooloose/nerdtree** - Facilita a manipulação de diretórios e arquivos dentro do próprio VIM.
* **davidhalter/jedi-vim** - Auto complete inteligente.
* **Lokaltog/vim-easymotion** - Ajuda na movimentação para um ponto específico da tela.
* **spf13/PIV** - Facilita a vida de programadores PHP.


## ATALHOS ##

Modo    | Atalho                | Descrição
:-------|:---------------------:|:------------------------------------------
NORMAL  | ;                     | Dois pontos (para evitar o uso do SHIFT)
INSERT  | jj                    | ESC (tem que pressionar jj rápido)
NORMAL  | gcc                   | Comenta uma linha de código (atual)
NORMAL  | gC                    | Comenta o bloco de código selecionado (modo VISUAL)
NORMAL  | F2                    | Exibe/esconde a janela de diretórios e arquivos (NERDTree)
        |                       | Para incluir, excluir ou mover um nó, pressione m
NORMAL  | F3                    | Exibe/esconde a janela de tags (TagBa)
NORMAL  | F7                    | Ativa o Flake8 (verificação do código Python)
NORMAL  | ,,w                   | Ativa o plugin EasyMotion
NORMAL  | CTRL + P              | Ativa o plugin CtrlP; ENTER para abrir o arquivo em uma nova aba
INSERT  | Ctrl e                | Expande tags HTML (sparkup)
NORMAL  | TAB                   | Avança a indentação do bloco selecionado (e preserva a seleção)
NORMAL  | SHIFT + TAB           | Recua a indentação do bloco selecionado (e preserva a seleção)
QUALQUER| CTRL + seta direita   | Vai para a aba (tab) da direita 
QUALQUER| CTRL + seta esquerda  | Vai para a aba (tab) da esquerda 
QUALQUER| CTRL + h              | Vai para a janela da esquerda
QUALQUER| CTRL + l              | Vai para a janela da direita
QUALQUER| CTRL + j              | Vai para a janela de baixo
QUALQUER| CTRL + k              | Vai para a janela de cima
