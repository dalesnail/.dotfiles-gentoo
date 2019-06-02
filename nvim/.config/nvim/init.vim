"#  ██████╗  █████╗ ██╗     ███████╗    ██╗  ██╗    ███████╗███╗   ██╗ █████╗ ██╗██╗     
"#  ██╔══██╗██╔══██╗██║     ██╔════╝    ╚██╗██╔╝    ██╔════╝████╗  ██║██╔══██╗██║██║     
"#  ██║  ██║███████║██║     █████╗       ╚███╔╝     ███████╗██╔██╗ ██║███████║██║██║     
"#  ██║  ██║██╔══██║██║     ██╔══╝       ██╔██╗     ╚════██║██║╚██╗██║██╔══██║██║██║     
"#  ██████╔╝██║  ██║███████╗███████╗    ██╔╝ ██╗    ███████║██║ ╚████║██║  ██║██║███████╗
"#  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝    ╚═╝  ╚═╝    ╚══════╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝╚══════╝
"#  Nvim init.vim

set mouse=a

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

" completion manager
Plug 'roxma/nvim-completion-manager'

" powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fancy Start
Plug 'mhinz/vim-startify'

" ToDo list Plugin
Plug 'irrationalistic/vim-tasks' 

call plug#end()

" Color Stuff
syntax on
colorscheme sorcerer

" Text Stuff
set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1

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

