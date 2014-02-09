function! SearchColor()
  hi search guibg=black  ctermbg=green ctermfg=black gui=NONE cterm=NONE
endfunction

function! GetFileSize()
  let filesize = getfsize(expand('%:p'))
  if filesize < 0
    return "-1"
  elseif filesize < 1024
    return filesize."b"
  elseif filesize >= 1048576
    return printf("%.2f", (filesize/1048576.00))."Mb"
  else
    return printf("%.2f", (filesize/1024.00))."Kb"
  endif
endfunction

function! SetStatusLine()
  hi User3 ctermbg=236 ctermfg=White guibg=NONE  guifg=#990000
  hi User2 ctermbg=252 ctermfg=Gray guibg=NONE  guifg=#990000
  set laststatus=2
  set statusline=
  set statusline+=%3*
  set statusline+=[%n]\ %<%.55f\ %h%w%m%r%y
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%=
  set statusline+=[(%l,%c)/%L]
  set statusline+=%2*[%P]
  set statusline+=[%{GetFileSize()}]
endfunction



