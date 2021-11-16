execute pathogen#infect()
syntax on
filetype plugin indent on

command! PrettyPrintJson  %!jq '.'

map <C-l> :PrettyPrintJson<CR>
map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set guifont=JetBrains\ Mono\:h13
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set listchars+=space:␣
set clipboard^=unnamed,unnamedplus

if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=JetBrains\ Mono\:h13
   endif
endif

" powerline
set rtp+=/opt/homebrew/lib/python3.9/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_no_extensions_in_markdown = 1
colorscheme slate
