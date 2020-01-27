"-------------------- Plugin Settings -------------------- {{

so ~/.dotfiles/nvim/plugins.vim

"}}


"-------------------- Editor Settings -------------------- {{

set nu
set background=dark
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
set hlsearch
set encoding=UTF-8
set shell=zsh\ -i
set guifont=FiraCode\ Nerd\ Font

colorscheme palenight

if (has("termguicolors"))
  set termguicolors
endif

let g:airline_powerline_fonts = 1
let mapleader = ','

"}}


"-------------------- Keymap Settings -------------------- {{

au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
autocmd BufWinEnter,WinEnter term://* startinsert

nmap <Leader>ev :tabedit ~/.dotfiles/nvim/init.vim<cr>
nmap <Leader>ep :tabedit ~/.dotfiles/nvim/plugins.vim<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <C-E> :NERDTreeToggle<cr>
nmap <C-T> :botright 8split term://bash<cr>
tnoremap <Esc> <C-\><C-n>:q!<cr>

"}}


"-------------------- Split Settings --------------------- {{

set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"}}


"-------------------- Autoload Settings ------------------ {{

augroup autosource
  autocmd!
  autocmd BufWritePost ~/.dotfiles/nvim/init.vim source %
  autocmd TermOpen * setlocal bufhidden=hide
augroup END

"}}


"-------------------- NERDTree Settings ------------------ {{

let g:NERDTreeWinSize = 24

"}}


"-------------------- Pretieer Settings ------------------- {{

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

"}}


"-------------------- CtrlP Settings ---------------------- {{

let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

"}}


