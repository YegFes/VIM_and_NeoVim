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

"Объединение буферов обмена системы и VIM
set clipboard=unnamed
