" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

	  Plug 'preservim/nerdtree'
	  Plug 'jreybert/vimagit'
	  Plug 'vimwiki/vimwiki'
	  Plug 'bling/vim-airline'
	  Plug 'tpope/vim-commentary'
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'
	  Plug 'junegunn/goyo.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'lukesmithxyz/vimling'
    Plug 'ap/vim-css-color'
    Plug 'scrooloose/NERDTree'
    Plug 'morhetz/gruvbox' 
    Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'ajh17/Spacegray.vim'
    Plug 'chriskempson/base16-vim'
    Plug 'junegunn/limelight.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    Plug 'arcticicestudio/nord-vim'
call plug#end()
