"==========================================
" Sections:
"       -> Initial Plugin ���ز��
"       -> General Settings ��������
"       -> Display Settings չʾ/�Ű�Ƚ����ʽ����
"       -> FileEncode Settings �ļ���������
"       -> Others ��������
"       -> HotKey Settings  �Զ����ݼ�
"       -> FileType Settings  ����ļ����͵�����
"       -> Theme Settings  ��������
"
"       -> ������ú;���������vimrc.bundles��
"==========================================
 
"==========================================
" Initial Plugin ���ز��
"==========================================

" �޸�leader��
let mapleader = ','
let g:mapleader = ','

" �����﷨����
syntax on

" install Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

"==========================================
" General Settings ��������
"==========================================

"������������ϸ˵����һЩ���Բ�ϲ������ֱ��ע���

"set guifont=Monaco:h20          " ���� && �ֺ�

" history�洢����
set history=2000

"����ļ�����
filetype on
"��Բ�ͬ���ļ����Ͳ��ò�ͬ��������ʽ
filetype indent on
"������
filetype plugin on
"�����Զ���ȫ
filetype plugin indent on

set autoread          " �ļ��޸�֮���Զ����롣
set shortmess=atI       " ������ʱ����ʾ�Ǹ�Ԯ���������ͯ����ʾ

" ����,����һ��λ��. ��ֹ��ɾ, Ŀǰ��ȡ������
"set backup
"set backupext=.bak
"set backupdir=/tmp/vimbk/

" ȡ�����ݡ� ������Լ���
set nobackup
" �رս����ļ�
set noswapfile


"create undo file
"if has('persistent_undo')
"  set undolevels=1000         " How many undos
"  set undoreload=10000        " number of lines to save for undo
"  set undofile                " So is persistent undo ...
"  set undodir=/tmp/vimundo/
"endif

"set wildignore=*.swp,*.bak,*.pyc,*.class,.svn
" ͻ����ʾ��ǰ�е�
set cursorcolumn
set cursorline          " ͻ����ʾ��ǰ��


"���� �˳�vim��������ʾ���ն���Ļ, �������ڲ鿴�͸���
"�ô�����ɾʲô�ģ������ǰ��Ļ�򿪣������һ�
"set t_ti= t_te=


"- ������겻�ỻ,���ڸ���
"set mouse-=a             " ����ݲ�����, ���̵�....
set mouse=a

" �޸�ctrl+m �������ѡ���bug�����Ǹı���ctrl+v�����ַ�ѡ��ʱ����������µ��ַ�
"set selection=exclusive
"set selection=inclusive
"set selectmode=mouse,key

" No annoying sound on errors
" ȥ������������ʾ����
set title                " change the terminal's title
set novisualbell         " don't beep
set noerrorbells         " don't beep
set t_vb=
set tm=500

" Remember info about open buffers on close"
set viminfo^=%

" For regular expressions turn magic on
set magic

" Configure backspace so it acts as it should act
"set backspace=eol,start,indent
"set whichwrap+=<,>,h,l

"==========================================
" Display Settings չʾ/�Ű�Ƚ����ʽ����
"==========================================
"
"��ʾ��ǰ���к��кţ�
set ruler
""��״̬����ʾ�������������
set showcmd
" ���½���ʾ��ǰvimģʽ
set showmode

" �������ƶ����ʱ�������Ϸ����·����ٻᱣ����ʾ������
set scrolloff=7

" set winwidth=79

" �����У���״̬���£��ĸ߶ȣ�Ĭ��Ϊ1��������2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" Always show the status line - use 2 lines for the status bar
set laststatus=2

"��ʾ�кţ�
set number
" ȡ�����С�
set nowrap

" ����������,��ת������һ��ƥ�������
set showmatch
" How many tenths of a second to blink when matching brackets
set matchtime=2

"������������������ʾ
" ����search���е��ı���
set hlsearch
" ����������ģʽ,���ż��뼴ʱ����
set incsearch
" ����ʱ���Դ�Сд
set ignorecase
" ��һ�������ϴ�д��ĸʱ�Դ�Сд����
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise

" �����۵�
set foldenable
" �۵�����
" manual    �ֹ��۵�
" indent    ʹ��������ʾ�۵�
" expr      ʹ�ñ��ʽ�����۵�
" syntax    ʹ���﷨�����۵�
" diff      ��û�и��ĵ��ı������۵�
" marker    ʹ�ñ�ǽ����۵�, Ĭ�ϱ���� {{{ �� }}}
set foldmethod=indent
set foldlevel=99

" ��������

set smartindent   " Smart indent
set autoindent    " ���Զ�����
" never add copyindent, case error   " copy the previous indentation on autoindenting

" tab��ر��
set tabstop=4     " ����Tab���Ŀ��        [��ͬ�Ŀո����]
set shiftwidth=4  " ÿһ��������Ӧ�Ŀո���
set softtabstop=4 " ���˸��ʱ����һ��ɾ�� 4 ���ո�
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop ���˸��ʱ����һ��ɾ�� 4 ���ո�
set expandtab     " ��Tab�Զ�ת���ɿո�    [��Ҫ����������Tab��ʱ��ʹ�� Ctrl+V + Tab]
set shiftround    " ����ʱ��ȡ�� use multiple of shiftwidth when indenting with '<' and '>'
set tw=200
" A buffer becomes hidden when it is abandoned
"set hidden
"set wildmode=list:longest
"set ttyfast

" 00x��������ʱʹ��ʮ����
"set nrformats=


" ����к�      �кű����ԣ������� nj  nk   ������ת 5j   5k ������5��
"set relativenumber number
"au FocusLost * :set norelativenumber number
"au FocusGained * :set relativenumber
"" ����ģʽ���þ����к�, ��ͨģʽ�������
"autocmd InsertEnter * :set norelativenumber number
"autocmd InsertLeave * :set relativenumber
"function! NumberToggle()
"  if(&relativenumber == 1)
"    set norelativenumber number
"  else
"    set relativenumber
"  endif
"endfunc
"nnoremap <C-n> :call NumberToggle()<cr>
"

"==========================================
" FileEncode Settings �ļ�����,��ʽ
"==========================================
" �������ļ��ı���Ϊ UTF-8
set encoding=cp936
" �Զ��жϱ���ʱ�����γ������±��룺
set fileencodings=ucs-bom,cp936,utf-8,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
"setlangmenu=zh_CN.UTF-8
"set enc=2byte-gb18030
" �������ֻӰ����ͨģʽ (��ͼ�ν���) �µ� Vim��
set termencoding=cp936

" Use Unix as the standard file type
set ffs=unix,dos,mac

" ����Unicodeֵ����255���ı������صȵ��ո������С�
"set formatoptions+=m
" �ϲ���������ʱ�������м�ӿո�
"set formatoptions+=B


"==========================================
" others ��������
"==========================================
"autocmd! bufwritepost _vimrc source % " vimrc�ļ��޸�֮���Զ����ء� windows��
autocmd! bufwritepost .vimrc source % " vimrc�ļ��޸�֮���Զ����ء� linux��

" �Զ���ȫ����
"��Vim�Ĳ�ȫ�˵���Ϊ��һ��IDEһ��(�ο�VimTip1228)
set completeopt=longest,menu

" ��ǿģʽ�е��������Զ���ɲ���
set wildmenu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class

"�뿪����ģʽ���Զ��ر�Ԥ������
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
""�س���ѡ�е�ǰ��
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"
""�������Ҽ�����Ϊ ����ʾ������Ϣ
"inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
"inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
"inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
"
"" if this not work ,make sure .viminfo is writable for you
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

"==========================================
" HotKey Settings  �Զ����ݼ�����
"==========================================

" ��Ҫ�����ض���

" �رշ����, ǿ���Լ��� hjkl
"map <Left> <Nop>
"map <Right> <Nop>
"map <Up> <Nop>
"map <Down> <Nop>
"
""Treat long lines as break lines (useful when moving around in them)
""se swap֮��ͬ����������ֱ����
"nnoremap k gk
"nnoremap gk k
"nnoremap j gj
"nnoremap gj j
"
"" F1 - F6 ����
"" F1 ���������,��ֹ����ϵͳ����
"" F2 �кſ��أ�������긴�ƴ�����
"" F3 ��ʾ�ɴ�ӡ�ַ�����
"" F4 ���п���
"" F5 ճ��ģʽpaste_mode����,�����и�ʽ�Ĵ���ճ��
"" F6 �﷨���أ��ر��﷨���Լӿ���ļ���չʾ
"
"" I can type :help on my own, thanks.  Protect your fat fingers from the evils of <F1>
"noremap <F1> <Esc>"
"
"""Ϊ���㸴�ƣ���<F2>����/�ر��к���ʾ:
"function! HideNumber()
"  if(&relativenumber == &number)
"    set relativenumber! number!
"  elseif(&number)
"    set number!
"  else
"    set relativenumber!
"  endif
"  set number?
"endfunc
"nnoremap <F2> :call HideNumber()<CR>
"nnoremap <F3> :set list! list?<CR>
"nnoremap <F4> :set wrap! wrap?<CR>
"              "set paste
"set pastetoggle=<F5>            "    when in insert mode, press <F5> to go to
"                                "    paste mode, where you can paste mass data
"                                "    that won't be autoindented
"
"" disbale paste mode when leaving insert mode
"au InsertLeave * set nopaste
"
"nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>
"
"
""Smart way to move between windows ���������ƶ�
"map <C-j> <C-W>j
"map <C-k> <C-W>k
"map <C-h> <C-W>h
"map <C-l> <C-W>l
"
" Go to home and end using capitalized directions
noremap H ^
noremap L $


"Map ; to : and save a million keystrokes
" ex mode commands made easy ���ڿ��ٽ���������
nnoremap ; :


" ������ģʽ��ǿ��ctrl - a�����ף� -e ����β
"cnoremap <C-j> <t_kd>
"cnoremap <C-k> <t_ku>
"cnoremap <C-a> <Home>
"cnoremap <C-e> <End>

" �������

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
"map <space> /
" ��������Use sane regexes"
"nnoremap / /\v
"vnoremap / /\v

"Keep search pattern at the center of the screen."
"nnoremap <silent> n nzz
"nnoremap <silent> N Nzz
"nnoremap <silent> * *zz
"nnoremap <silent> # #zz
"nnoremap <silent> g* g*zz
"
" switch # *
"nnoremap # *
"nnoremap * #

" ȥ����������
"noremap <silent><leader>/ :nohls<CR>

" --------tab/buffer���

"Use arrow key to change buffer"
" TODO: �����ת��ȷ����buffer?
" :b1 :b2   :bf :bl
"nnoremap [b :bprevious<cr>
"nnoremap ]b :bnext<cr>
"noremap <left> :bp<CR>
"noremap <right> :bn<CR>


" tab ����
" TODO: ctrl + n ����л�tab�ķ���
" http://vim.wikia.com/wiki/Alternative_tab_navigation
" http://stackoverflow.com/questions/2005214/switching-to-a-particular-tab-in-vim
"map <C-2> 2gt
"map <leader>th :tabfirst<cr>
"map <leader>tl :tablast<cr>
"
"map <leader>tj :tabnext<cr>
"map <leader>tk :tabprev<cr>
"map <leader>tn :tabnext<cr>
"map <leader>tp :tabprev<cr>
"
"map <leader>te :tabedit<cr>
"map <leader>td :tabclose<cr>
"map <leader>tm :tabm<cr>
"

" �½�tab  Ctrl+t
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>
" TODO: ���óɹ�����, �л�������, ������
" nnoremap <C-S-tab> :tabprevious<CR>
" nnoremap <C-tab>   :tabnext<CR>
" inoremap <C-S-tab> <Esc>:tabprevious<CR>i
" inoremap <C-tab>   <Esc>:tabnext<CR>i
" nnoremap <C-Left> :tabprevious<CR>
" nnoremap <C-Right> :tabnext<CR>

" normalģʽ���л���ȷ�е�tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Toggles between the active and last active tab "
" The first tab is always 1 "
let g:last_active_tab = 1
" nnoremap <leader>gt :execute 'tabnext ' . g:last_active_tab<cr>
nnoremap <silent> <c-l> :execute 'tabnext ' . g:last_active_tab<cr>
vnoremap <silent> <c-l> :execute 'tabnext ' . g:last_active_tab<cr>
autocmd TabLeave * let g:last_active_tab = tabpagenr()


" ------- ѡ�м������ļ�

"Reselect visual block after indent/outdent.�����������Զ�ѡ�У������ٴβ���
"vnoremap < <gv
"vnoremap > >gv

" y$ -> Y Make Y behave like other capitals
"map Y y$

" select all
"map <Leader>sa ggVG"

" select block
"nnoremap <leader>v V`}

" w!! to sudo & write a file
"cmap w!! w !sudo tee >/dev/null %

" kj �滻 Esc
"inoremap kj <Esc>

" ����Speed up scrolling of the viewport slightly
"nnoremap <C-e> 2<C-e>
"nnoremap <C-y> 2<C-y>


"Jump to start and end of line using the home row keys
" ��ǿtab����, ���������������, ���ǻ���
"nmap t o<ESC>k
"nmap T O<ESC>j

" Quickly close the current window
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>

" Swap implementations of ` and ' jump to markers
" By default, ' jumps to the marked line, ` jumps to the marked line and
" column, so swap them
"nnoremap ' `
"nnoremap ` '

" remap U to <C-r> for easier redo
"nnoremap U <C-r>

" Quickly edit/reload the vimrc file
"nmap <silent> <leader>ev :e $MYVIMRC<CR>
"nmap <silent> <leader>sv :so $MYVIMRC<CR>

"==========================================
" FileType Settings  �ļ���������
"==========================================

" Python �ļ���һ�����ã����粻Ҫ tab ��
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai

"" ����python�ļ�ʱɾ������ո�
"fun! <SID>StripTrailingWhitespaces()
"    let l = line(".")
"    let c = col(".")
"    %s/\s\+$//e
"    call cursor(l, c)
"endfun
"autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
"
" ���庯��AutoSetFileHead���Զ������ļ�ͷ

func! Chead() 
    call setline(1,"/***************************************************************************")
    call append(line("."),"*")
    call append(line(".")+1,printf("* Copyright (c) %s Baidu.com, Inc. All Rights Reserved",strpart(strftime("%Y/%m/%d"),0,4)))
    call append(line(".")+2,"*")
    call append(line(".")+3,"**************************************************************************/")
    call append(line(".")+4,"")
    call append(line(".")+5,"")
    call append(line(".")+6,"")
    call append(line(".")+7,"/**")
    call append(line(".")+8,"* @file ".expand("%"))
    call append(line(".")+9,"* @author yangxu07(com@baidu.com)")
    call append(line(".")+10,"* @date ".strftime("%Y/%m/%d %H:%M:%S"))
    call append(line(".")+11,"* @brief")
    call append(line(".")+12,"*")
    call append(line(".")+13,"**/")
endfunc
func! ScriptHead() 
    call setline(1,"############################################################################")
    call append(line("."),"#")
    call append(line(".")+1,printf("# Copyright (c) %s Baidu.com, Inc. All Rights Reserved",strpart(strftime("%Y/%m/%d"),0,4)))
    call append(line(".")+2,"#")
    call append(line(".")+3,"############################################################################")
    call append(line(".")+4,"")
    call append(line(".")+5,"")
    call append(line(".")+6,"")
    call append(line(".")+7,"# @file ".expand("%"))
    call append(line(".")+8,"# @author yangxu07(com@baidu.com)")
    call append(line(".")+9,"# @date ".strftime("%Y/%m/%d %H:%M:%S"))
    call append(line(".")+10,"# @brief")
    call append(line(".")+11,"")
endfunc

autocmd BufNewFile *.[ch],*.cpp,*.hpp,*.sh,*.py exec ":call AutoSetFileHead()"
function! AutoSetFileHead()
    if &filetype == 'c' || &filetype == 'cpp' || &filetype == 'h' || &filetype == 'hpp'
        call Chead()
    elseif &filetype == 'sh' 
        call ScriptHead()
        call append(line(".")+12, "\#!/bin/bash")
    elseif &filetype == 'python'
        call ScriptHead()
        call append(line(".")+12, "\#!/usr/bin/env python")
    else
        "nothing
    endif
    normal G
    normal o
    normal o
endfunc

" F10 to run python script
nnoremap <buffer> <F10> :exec '!python' shellescape(@%, 1)<cr>

"==========================================
" Theme Settings  ��������
"==========================================

" Set extra options when running in GUI mode
if has("gui_running")
    set guifont=Monaco:h14
    if has("gui_gtk2")   "GTK2
        set guifont=Monaco\ 12, Monospace\ 12
    endif
    set guioptions-=T
    set guioptions+=e
    set guioptions-=r
    set guioptions-=L
    set guitablabel=%M\ %t
    set showtabline=1
    set linespace=2
    set noimd
    set t_Co=256
endif

" theme����
"set background=dark
"colorscheme solarized
colorscheme molokai
set t_Co=256

"colorscheme molokai
"colorscheme desert

"���ñ��һ�еı�����ɫ������һ����ɫһ��
hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

"" for error highlight����ֹ�������б�쵼�¿�����
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline
