"""""""""""
"  VIMRC  "
"""""""""""

"TODO:
"* redo comment hilight to add colors: 
"// needs to be language specific (ie://! in c -> red)

set nu
:highlight LineNr ctermfg=darkgrey
set ruler "Displays 'row,column' position
set tabstop=4 "Show existing tab with 4 spaces width
set expandtab "On pressing <TAB> insert 4 spaces 

let f_name = expand('%:e')

"Customizing behaviour of vim depending on filetype:
if(f_name ==# 'c')
    :inoremap ( ()<LEFT>
    :inoremap [ []<LEFT>
    :inoremap { {}<LEFT>
    :inoremap " ""<LEFT>
    :inoremap ' ''<LEFT>    

elseif(f_name ==# 'py')
    :inoremap ( ()<LEFT>
    :inoremap [ []<LEFT>
    :inoremap { {}<LEFT>
    :inoremap " ""<LEFT>
    :inoremap ' ''<LEFT> 

elseif(f_name ==# 'tex')
    :inoremap ( ()<LEFT>
    :inoremap [ []<LEFT>
    :inoremap { {}<LEFT> 
    :inoremap $ $$<LEFT>

elseif(f_name ==# 'php' || f_name ==# 'css' || f_name ==# 'html')
    :inoremap < <><LEFT>
    :inoremap ( ()<LEFT>

elseif(f_name ==# 'txt')
    "Does not need anything extra!

else
    :inoremap ( ()<LEFT>
    :inoremap [ []<LEFT>
    :inoremap { {}<LEFT>
    :inoremap " ""<LEFT>
    :inoremap ' ''<LEFT>

endif

" For moving lines up and down
:inoremap <M-DOWN> <ESC>:m+<CR>i
:inoremap <M-UP> <ESC>:m-2<CR>i

"For deleting whole line
":inoremap <M-d> <ESC> -- does not work

