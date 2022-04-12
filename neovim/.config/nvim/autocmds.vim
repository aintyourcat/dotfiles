augroup MyAuGroup
    autocmd!
    autocmd BufEnter term://* startinsert
    autocmd BufEnter term://* set nonumber norelativenumber
    autocmd BufWritePost *.er silent execute '!erd -c$XDG_CONFIG_HOME/erd.yaml -i % -o %:r.png -f png' 
    " autocmd BufWritePost *.uml silent execute '!plantuml -quiet -failfast2 %'
    autocmd BufWritePost *.uml call system('!plantuml -quiet -failfast2 % &')
augroup end
