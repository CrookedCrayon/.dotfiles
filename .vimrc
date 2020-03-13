"""""""""""
"  VIMRC  "
"""""""""""

"TODO:
"* finish/fix comment hilighting: '#!','#TODO:', ... 
"
"* fix deleting one word
"
"* 


"Global options:
let g:gruvbox_contrast_dark='hard'
:colorscheme gruvbox
set background=dark
set nu                              "Shows line numbers
:highlight LineNr ctermfg=darkgrey  "Changed color of line numbers
set ruler                           "Displays 'row,column' position at bottom right
set tabstop=4                       "Show existing tab with 4 spaces width
set expandtab                       "On pressing <TAB> insert 4 spaces 

let f_name = expand('%:e')

"Customizing behaviour of vim depending on filetype:
if(f_name ==# 'c' || f_name ==# 'h' || f_name ==# 'cpp' || f_name ==# 'hpp' || f_name ==# 'php')
    :set showmatch
    :match DiffText /\/\/!.*/   "highlights '//!' until EOL
    :match Todo /\/\/TODO:/     "highlights '//TODO:' only
    :inoremap ( ()<LEFT>
    :inoremap [ []<LEFT>
    :inoremap { {}<LEFT>
    :inoremap " ""<LEFT>
    :inoremap ' ''<LEFT>    

elseif(f_name ==# 'py')
    :match DiffText /#!.*/
    :match Todo /#TODO:/
    :inoremap ( ()<LEFT>
    :inoremap [ []<LEFT>
    :inoremap { {}<LEFT>
    :inoremap " ""<LEFT>
    :inoremap ' ''<LEFT> 

elseif(f_name ==# 'tex')
    :set showmatch
    :inoremap ( ()<LEFT>
    :inoremap [ []<LEFT>
    :inoremap { {}<LEFT> 
    :inoremap $ $$<LEFT>

elseif(f_name ==# 'css' || f_name ==# 'html')
    :set showmatch
    :inoremap < <><LEFT>
    :inoremap ( ()<LEFT>

elseif(f_name ==# 'md') "Markdown language

elseif(f_name ==# 'txt')
    "Does not need anything extra

else
    :inoremap ( ()<LEFT>
    :inoremap [ []<LEFT>
    :inoremap { {}<LEFT>
    :inoremap " ""<LEFT>
    :inoremap ' ''<LEFT>

endif

" Moves lines up and down:
:inoremap <M-UP> <ESC>:m-2<CR>i
:inoremap <M-DOWN> <ESC>:m+<CR>i

" Deletes whole line:
:noremap! <C-S-k> <ESC>ddi

" Deletes one word: 
:noremap! <C-BS> dwi
