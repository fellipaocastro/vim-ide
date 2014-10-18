I use VIM almost every time I have to edit a plain text document, and there are a couple of good
reasons for that. Here are some of them:

- vim is highly customizable: there are 1000s of plugins to configure it as your taste;
- vim is fast, very fast: you don't have to waste several minutes waiting for it to load;
- vim is omnipresent: mac os, linux, windows, android, etc.

But there's one feature really special to me: shortcuts, lots of them.
There are shortcuts for everything, from simple copy `y/Y` and paste `p/P` operations to complex
things like selecting a paragraph `vip/vap`. I love it!

Without further delay, behold the VIM-IDE.

## vim-ide

Optimized for Python/Django, PHP, Javascript/Node.js, HTML, CSS.

![vim-ide](https://github.com/rafael84/vim-ide/raw/master/img/overview.png)

### pre-requisites

**Ubuntu:**

    sudo apt-get install exuberant-ctags

**OSX:**

    brew install ctags-exuberant


### installation
 
1. clone the git repository to `~/.vim-ide`:
        
        :::sh
        git clone https://github.com/rafael84/vim-ide.git ~/.vim-ide
        
2. create symbolic links to `.vimrc` and `.vim`:

        :::sh
        ln -snf ~/.vim-ide/vimrc ~/.vimrc
        ln -snf ~/.vim-ide/vim ~/.vim

3. install the plugins using Vim-Plug, a vim's plugin manager:

        :::sh
        vim +PlugInstall +qall

4. thanks for flying with vim!


#### note:
To update an existing installation, best approach is to delete the `~/.vim-ide` and then repeat the
steps 1-4, listed above.

### how to customize it

If you want to overwrite any setting, first create a file named `.vimrc_extra` at your home
directory, e.g:

    :::sh
    touch ~/.vimrc_extra
    
This file, if exists, will be loaded right after the main settings file, `~/.vimrc`. By doing this
way, you avoid merging conflicts when you update your vim-ide. 

Just as an example, here's how to change the color scheme:

    :::sh
    echo "silent!colorscheme elflord" >> ~/.vimrc_extra


### plugins

* [CtrlP](http://github.com/kien/ctrlp.vim) - find files quickly
* [closetag](http://github.com/docunext/closetag.vim) - close tags automatically. Good for HTML, XML and so on
* [jedi-vim](http://github.com/davidhalter/jedi-vim) - smart auto complete
* [nerdtree](http://github.com/scrooloose/nerdtree) - better file handling
* [nginx.vim](http://github.com/vim-scripts/nginx.vim) - syntax highlight for nginx config files
* [riv.vim](http://github.com/Rykka/riv.vim) - excellent for the reST markup language
* [sparkup](http://github.com/rstacruz/sparkup) - several html code templates
* [surround.vim](http://github.com/vim-scripts/surround.vim) - lots of useful commands regargind "surround" operations: parenthesis, brackets, tags and much more
* [syntastic](http://github.com/scrooloose/syntastic) - warn about problems in the current source code
* [tComment](http://github.com/vim-scripts/tComment) - easier commenting on code blocks
* [tagbar](http://github.com/majutsushi/tagbar) - inspect window (classes, functions, variables, etc)
* [vim-colors](http://github.com/spf13/vim-colors) - some additional colorschemes
* [vim-easymotion](http://github.com/Lokaltog/vim-easymotion) - helps you get faster to some specific point of the window
* [vim-flake8](http://github.com/nvie/vim-flake8) - python code validation
* [vim-fugitive](http://github.com/tpope/vim-fugitive) - git integration
* [vim-javascript](http://github.com/pangloss/vim-javascript) - improves javascript editing, specially within HTML pages
* [vim-power](http://github.com/Lokaltog/vim-powerline) - better status bar


### shortcuts

mode    | shortcut              | description
--------|-----------------------|-------------------------------------------
NORMAL  | ;                     | the same as the colon key, so that you don't need to use SHIFT
INSERT  | jj                    | ESC (press jj quickly)
NORMAL  | gcc                   | comment the current line of code
NORMAL  | F2                    | toggle the NERDTree panel (directories and files)
NORMAL  | F3                    | toggle the TagBar panel
NORMAL  | F7                    | invoke the Flake8 (Python code verification)
NORMAL  | ,,w                   | activate the EasyMotion (try press the H command first)
NORMAL  | CTRL + P              | activate the CtrlP plugin; press ENTER to open the file(s) in a new tab
INSERT  | Ctrl + e              | html code templates with Sparkup (must be editing a HTML file)
NORMAL  | TAB                   | indent preserving visual selection
NORMAL  | SHIFT + TAB           | unindent preserving visual selection
ANY     | CTRL + right arrow    | go to the next tab
ANY     | CTRL + left arrow     | go to the previuos tab
ANY     | CTRL + h              | set the focus on the left window
ANY     | CTRL + l              | set the focus on the right window
ANY     | CTRL + j              | set the focus on the window below
ANY     | CTRL + k              | set the focus on the window above
NORMAL  | LF                    | locate the file in the NERDTree panel
VISUAL  | Ctrl + P              | duplicate the selected block of code
