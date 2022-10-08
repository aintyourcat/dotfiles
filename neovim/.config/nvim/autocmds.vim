augroup MyAuGroup
    autocmd!
    autocmd BufEnter term://* startinsert
    autocmd BufEnter term://* set nonumber norelativenumber
    autocmd BufWritePost *.uml call jobstart('plantuml -quiet -failfast2 -o ' . expand('%:p:h') . '/export ' . expand('%'))
augroup end
