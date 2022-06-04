call plug#begin()
    " I need to have neovim, git and curl installed
    " Vimplug install -- https://github.com/junegunn/vim-plug:
    " sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    "       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    " In the init.vim
    " :PlugInstall
    " :PlugClean
    Plug 'junegunn/goyo.vim'        " Goyo -- focus mode
    Plug 'morhetz/gruvbox'          " Colorscheme gruvbox
    Plug 'preservim/nerdtree'       " Nerdtree, leader + q
                                        " t -- open in new tab
                                        " T -- open in new tab silently
                                        " i -- open split down
                                        " s -- open split right
                                        " I -- hidden files on/off
                                        " u -- up a dir
    Plug 'preservim/tagbar'         " Tagbar, leader + c (table of contents)
                                    " I need to have ctag installed, eg.:
                                        " sudo apt install universal-ctags
    Plug 'tpope/vim-commentary'     " gcc or gc
    Plug 'tpope/vim-surround'       " Surround
                                        " Visual mode:
                                            " S)
                                        " Visual line mode
                                            " S) inserts ) in previous and next line
                                        " Normal mode:
                                            " ys iw (
                                            " ds (
                                            " cs iw ([
                                            " yss(
                                            " ( with space in between
                                            " ) without space
call plug#end()
