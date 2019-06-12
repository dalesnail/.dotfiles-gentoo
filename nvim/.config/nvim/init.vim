"#
"#  ██████╗  █████╗ ██╗     ███████╗    ██╗  ██╗    ███████╗███╗   ██╗ █████╗ ██╗██╗     
"#  ██╔══██╗██╔══██╗██║     ██╔════╝    ╚██╗██╔╝    ██╔════╝████╗  ██║██╔══██╗██║██║     
"#  ██║  ██║███████║██║     █████╗       ╚███╔╝     ███████╗██╔██╗ ██║███████║██║██║     
"#  ██║  ██║██╔══██║██║     ██╔══╝       ██╔██╗     ╚════██║██║╚██╗██║██╔══██║██║██║     
"#  ██████╔╝██║  ██║███████╗███████╗    ██╔╝ ██╗    ███████║██║ ╚████║██║  ██║██║███████╗
"#  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝    ╚═╝  ╚═╝    ╚══════╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝╚══════╝
"#  Nvim init.vim

" Quality of life changes
set mouse=a
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" 256 bit color
if  $TERM == "xterm-256color"
	set t_Co=256
endif

" Vim-Plug
call plug#begin('~/.config/nvim/plugged')

" Autoinstall - Leaving here to remind you of your mistakes
" autocmd VimEnter * PlugInstall
" autocmd VimEnter * q

" RUST STUFF
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'

" completion manager
Plug 'roxma/nvim-completion-manager'

" powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fancy Start
Plug 'mhinz/vim-startify'

" ToDo list Plugin
Plug 'irrationalistic/vim-tasks' 

" NerdTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" GIT
Plug 'airblade/vim-gitgutter'

" Surround
Plug 'tpope/vim-surround'

" Indent Markers
Plug 'Yggdroot/indentline'

" Cursors
Plug 'terryma/vim-multiple-cursors'

" Tabs Complete
Plug 'ervandew/supertab'

call plug#end()

" Color Stuff
syntax on
colorscheme sorcerer

" Number line stuff
highlight clear LineNr


" Text Stuff
set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#alt_sep = 1

" Keymapping
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
:nnoremap <C-X> :bdelete<CR>
:nnoremap <Left> :echoe "Use h!"<CR>
:nnoremap <Right> :echoe "Use l!"<CR>
:nnoremap <Up> :echoe "Use k!"<CR>
:nnoremap <Down> :echoe "Use j!"<CR>
:nnoremap <unique> ; :
:inoremap <unique> <C-j> <Esc>
" Header
function! s:filter_header(lines) abort
	let longest_line = max(map(copy(a:lines), 'strwidth(v:val)'))
	let centered_lines = map(copy(a:lines),
				\ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
	return centered_lines
endfunction
let g:startify_custom_header = [
			\'',
			\'',
			\'    ·▄▄▄▄   ▄▄▄· ▄▄▌  ▄▄▄ .    ▐▄• ▄     .▄▄ ·  ▐ ▄  ▄▄▄· ▪  ▄▄▌  ',
			\'    ██▪ ██ ▐█ ▀█ ██•  ▀▄.▀·     █▌█▌▪    ▐█ ▀. •█▌▐█▐█ ▀█ ██ ██•  ',
			\'    ▐█· ▐█▌▄█▀▀█ ██▪  ▐▀▀▪▄     ·██·     ▄▀▀▀█▄▐█▐▐▌▄█▀▀█ ▐█·██▪  ',
			\'    ██. ██ ▐█ ▪▐▌▐█▌▐▌▐█▄▄▌    ▪▐█·█▌    ▐█▄▪▐███▐█▌▐█ ▪▐▌▐█▌▐█▌▐▌',
			\'    ▀▀▀▀▀•  ▀  ▀ .▀▀▀  ▀▀▀     •▀▀ ▀▀     ▀▀▀▀ ▀▀ █▪ ▀  ▀ ▀▀▀.▀▀▀ ',
			\'    ',
			\'    ',]

