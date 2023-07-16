" Enable pathogen plugins
execute pathogen#infect()

" Enable code syntax coloring
syntax on

" Enable auto indent for all filetypes
filetype plugin indent on

" Set tab width and expand tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Set cursor move to mouse
set mouse=a

" Set backspace to delete any character
set backspace=2

" Configure Neoformat to use Vim's formatprg formatter
let g:neoformat_try_formatprg = 1

" Run Pretttier formatting on save
augroup NeoformatAutoFormat
    autocmd!
    let g:prettier#config#config_precedence = 'file-override'
    autocmd BufWritePre *.js,*.json Prettier
augroup END