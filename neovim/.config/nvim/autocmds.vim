augroup MyAuGroup
    autocmd!
    autocmd BufEnter term://* startinsert
    autocmd BufEnter term://* set nonumber norelativenumber
    autocmd BufWritePost *.uml call system('!plantuml -quiet -failfast2 % &')
augroup end
