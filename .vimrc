"=============================
"           PLUGINS
"=============================

set nocompatible
filetype off

set shell=sh
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"===== NERDTree =====
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | qa | endif
"====================

call vundle#end()
filetype plugin indent on

"=============================
"           GENERIC
"=============================

syntax on				"Colores de sintaxis
colorscheme default		"Esquema de color por defecto
set tabstop=4			"Tabulacion a 4 espacios
set noswapfile			"No generar ficheros swp
set nobackup			"No genera backups
set autoindent			"Identacion automatica
set showmode			"Muestra el modo en el que nos encontramos (Insert/Grafico
set laststatus=2		"Siempre muestra el fichero donde nos encontramos
set wildmenu			"Al tabular muestra arriba el contenido"
set ruler				"Mostrar siempre porcentaje fichero"
"set number				"Muestra los numeros de linea
"set cursorline			"Resalta la linea donde se encuentra el cursor
set showmatch			"Colorea parentesis
set shiftwidth=4
set softtabstop=4

"=============================
"           FUNCTIONS
"=============================

"Muestra y oculta los numeros de linea relativos a la posicion del cursor
function! ToggleRelativeNumber()
	if &relativenumber == 1
		set norelativenumber
		set number!
	else
		set relativenumber
		set number
	endif
endfunction

"Mapea la funcion con la telca F5
nmap <F5> :call ToggleRelativeNumber()<CR>
