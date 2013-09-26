# vim-ide #

Vim settings otimizado para uso com Python/Django.

## Pré-requisitos ##

    sudo apt-get install exuberant-ctags

## Instalação ##
 
1. Faça um clone do projeto para ~/.vim-ide e inicialize os sub-módulos:
        
        git clone https://github.com/rafael84/vim-ide.git ~/.vim-ide
        git submodule init
        git submodule update
        
2. Crie links simbólicos para o arquivo .vimrc e para o diretório .vim:

        ln -snf ~/.vim-ide/vimrc ~/.vimrc
        ln -snf ~/.vim-ide/vim ~/.vim

3. Instale o Vudle para gerenciamento dos plugins

        vim +BundleInstall +qall

4. Obrigado por voar com o Vim!

## Plugins ##

* __tpope/vim-fugitive__: Integração com GIT.
* __Lokaltog/vim-powerline__: Barra de status melhorada.
* __vim-scripts/surround.vim__: Keymappings para trabalhar com "", '', (), {}, etc.
* __vim-scripts/nginx.vim__: Coloração de sintaxe para arquivo de configuração do nginx.
* __nvie/vim-flake8__: Verificação de código fonte Python.
* __majutsushi/tagbar__: Janela de tags com elementos do arquivo (classes, funções, variáveis, etc.)
* __pangloss/vim-javascript__: Melhorias na identação de código Javascript.
* __scrooloose/syntastic'__: Indica locais onde há problemas de sintaxe ou violação de padrões PEP8.
* __rstacruz/sparkup__: Facilita (e muito) a criação de código HTML.
* __vim-scripts/tComment__: Facilita a inclusão de comentários no código fonte.
* __kien/ctrlp.vim__: Poderosa ferramenta de busca de arquivos.
* __docunext/closetag.vim__: Fecha automaticamente as tags HTML.

## Atalhos ##

Modo    | Atalho                | Descrição
:-------|:---------------------:|:------------------------------------------
NORMAL  | ;                     | Dois pontos (para evitar o uso do SHIFT)
NORMAL  | F2                    | Exibe/esconde a janela de tags
NORMAL  | F7                    | Ativa o Flak8 (verificação do código Python)
INSERT  | jj                    | ESC (tem que pressionar jj rápido)
QUALQUER| Ctrl seta direita     | Vai para a aba (tab) da direita 
QUALQUER| Ctrl seta esquerda    | Vai para a aba (tab) da esquerda 
NORMAL  | gcc                   | Comenta uma linha de código (atual)
NORMAL  | gC                    | Comenta o bloco de código selecionado (modo VISUAL)
INSERT  | Ctrl e                | Expande tags HTML (sparkup)
NORMAL  | ;                     | Dois pontos (para evitar o uso do SHIFT)
NORMAL  | F2                    | Exibe/esconde a janela de tags
NORMAL  | F7                    | Ativa o Flak8 (verificação do código Python)
INSERT  | jj                    | ESC (tem que pressionar jj rápido)
QUALQUER| Ctrl seta direita     | Vai para a aba (tab) da direita 
QUALQUER| Ctrl seta esquerda    | Vai para a aba (tab) da esquerda 
NORMAL  | gcc                   | Comenta uma linha de código (atual)
NORMAL  | gC                    | Comenta o bloco de código selecionado (modo VISUAL)
INSERT  | Ctrl e                | Expande tags HTML (sparkup)
NORMAL  | Ctrl p                | Abre uma janela para consulta e abertura de arquivos

### Exemplos Sparkup ###

**`div`** expands to:

```html
<div></div>
```

**`div#header`** expands to:

```html
    <div id="header"></div>
```

**`div.align-left#header`** expands to:

```html
    <div id="header" class="align-left"></div>
```

**`div#header + div#footer`** expands to:

```html
    <div id="header"></div>
    <div id="footer"></div>
```

**`#menu > ul`** expands to:

```html
    <div id="menu">
        <ul></ul>
    </div>
```

**`#menu > h3 + ul`** expands to:

```html
    <div id="menu">
        <h3></h3>
        <ul></ul>
    </div>
```

**`#header > h1{Welcome to our site}`** expands to:

```html
    <div id="header">
        <h1>Welcome to our site</h1>
    </div>
```

**`a[href=index.html]{Home}`** expands to:

```html
    <a href="index.html">Home</a>
```

**`ul > li*3`** expands to:

```html
    <ul>
        <li></li>
        <li></li>
        <li></li>
    </ul>
```

**`ul > li.item-$*3`** expands to:

```html
    <ul>
        <li class="item-1"></li>
        <li class="item-2"></li>
        <li class="item-3"></li>
    </ul>
```

**`ul > li.item-$*3 > strong`** expands to:

```html
    <ul>
        <li class="item-1"><strong></strong></li>
        <li class="item-2"><strong></strong></li>
        <li class="item-3"><strong></strong></li>
    </ul>
```

**`table > tr*2 > td.name + td*3`** expands to:

```html
    <table>
        <tr>
            <td class="name"></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="name"></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
```

**`#header > ul > li < p{Footer}`** expands to:

```html
    <!-- The < symbol goes back up the parent; i.e., the opposite of >. -->
    <div id="header">
        <ul>
            <li></li>
        </ul>
        <p>Footer</p>
    </div>
```
