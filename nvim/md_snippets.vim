autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><Enter><--><Esc>2kA
autocmd Filetype markdown inoremap <buffer> ,2 ##<Space><Enter><Enter><--><Esc>2kA
autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><Enter><--><Esc>2kA
autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><Enter><--><Esc>2kA

autocmd Filetype markdown inoremap <buffer> ,b **** <--><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> ,i ** <--><Esc>F*i
autocmd Filetype markdown inoremap <buffer> ,s ~~~~ <--><Esc>F~hi
autocmd Filetype markdown inoremap <buffer> ,d `` <--><Esc>F`i
autocmd Filetype markdown inoremap <buffer> ,c ```<Enter><--><Enter>```<Enter><Enter><--><Esc>4kA

autocmd Filetype markdown inoremap <buffer> ,t - [ ] 
autocmd Filetype markdown inoremap <buffer> ,a [](<-->) <--><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,p ![](<-->) <--><Esc>F[a

autocmd Filetype markdown inoremap <buffer> ,h ---<Enter><Enter>

autocmd Filetype markdown inoremap <buffer> ,f <Esc>/<--><CR>:noh<CR>"_c4l
autocmd Filetype markdown inoremap <buffer> ,x <Esc>/ <--><CR>:noh<CR>"_c5l
