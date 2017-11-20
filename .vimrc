filetype on

"GLOBAL
  set nu
  syntax on
  set backspace=2
  noremap <Up> <NOP>
  noremap <Down> <NOP>
  noremap <Left> <NOP>
  noremap <Right> <NOP>
  imap <F1> <Esc>/<++><Enter>"_c4l
  nmap <F1> <Esc>/<++><Enter>"_c4l
  inoremap ~~ <++>
  map <F12> :split ~/.vimrc<CR>G


".C and CPP files
  autocmd FileType h,cpp,c set tabstop=2
  " when indenting with '>', use 4 spaces width
  autocmd FileType h,cpp,c set shiftwidth=2
  " On pressing tab, insert 4 spaces
  autocmd FileType h,cpp,c set expandtab
  autocmd FileType h,cpp,c set cindent
  autocmd FileType h,cpp,c set t_Co=256
  autocmd FileType h,cpp,c set textwidth=120
  autocmd FileType h,cpp,c set comments=sl:/*,mb:\ *,elx:\ */
  autocmd FileType h,cpp,c map <F4> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>
  "Auto expand for brackets
  autocmd FileType h,cpp,c ino { <CR>{<CR><Esc>A}<CR><++><Esc>kka<CR>
  autocmd FileType h,cpp,c ino ( ()<++><Esc>4hi


let g:clang_library_path='/usr/lib64/libclang.so.5.0.0'

"TEX files
  autocmd FileType txt,tex setlocal spell spelllang=en_gb
  autocmd FileType tex set cindent
  autocmd FileType tex inoremap ;q \section{Question <++>}<CR>\textit{<++>}<CR>  \begin{enumerate}<CR>\end{enumerate}<Esc>O  <++><Esc>kkk<Esc>/<++><Enter>"_c4l

execute pathogen#infect()
call pathogen#helptags()
augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END
