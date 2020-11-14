"Настройка плагинов в "vim-plug"
call plug#begin('~/.vim/plugged')

"Иерархическое дерево проекта
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"Тема "Dracula"
Plug 'dracula/vim', { 'as': 'dracula' }

"Autocomplition
Plug 'ycm-core/YouCompleteMe'

"Автозакрытие символов
Plug 'jiangmiao/auto-pairs'

"Расширенные комманды для работы с GitHub терминала в VIM
Plug 'tpope/vim-fugitive'

"Показ изменений внесённых в репозиторий GitHub
Plug 'airblade/vim-gitgutter'

"Поиск по файлам
Plug 'kien/ctrlp.vim'

"Быстрое перемещение по символам
Plug 'easymotion/vim-easymotion'

" Initialize plugin system
call plug#end()  

"Запуск "EasyMotion"
map <Leader> <Plug>(easymotion-prefix)

"Замена клавиши "/" на ","
let g:mapleader=','

"Нумерация строк
set number 

"Подсветка кода
syntax on

"Настройка клавиши "Tab" на пробелы
set expandtab 

"Настройка количества пробелов при нажатии "Tab"
set tabstop=2

"Настройка количества пробелов при сдвигании текста
set shiftwidth=2

"Подсветкa слов при поиске
set hlsearch

"Подсветка первого вхождения слова
set incsearch

"Запуск NerdTree
map <C-n> :NERDTreeToggle<CR>

"Удобное управление окнами

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction

"Объединение буферов обмена системы и VIM
set clipboard=unnamed
