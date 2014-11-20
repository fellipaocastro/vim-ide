## vim-ide

Optimized for Python, PHP, Javascript, Node.js, HTML, CSS and more!

![vim-ide](https://github.com/rafael84/vim-ide/raw/master/img/overview.png)

### pre-requisites

**Ubuntu:**

    sudo apt-get install exuberant-ctags

**OSX:**

    brew install ctags-exuberant

### installation
 
    curl -L https://raw.githubusercontent.com/rafael84/vim-ide/master/install.sh | bash -


### how to customize it

If you want to overwrite any setting, first create a file named `.vimrc_extra` at your home
directory, e.g:

    touch ~/.vimrc_extra
    
This file, if exists, will be loaded right after the main settings file, `~/.vimrc`. By doing this
way, you avoid merging conflicts when you update your vim-ide. 

Just as an example, here's how to change the color scheme:

    echo "silent!colorscheme elflord" >> ~/.vimrc_extra


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
