" Coc extentions
let g:coc_global_extensions = ['coc-pyright', 'coc-json', 'coc-snippets', 'coc-explorer', 'coc-tabnine']
" Coc Mapping
" Remap for do codeAction of current line
nmap <leader>lc <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>lf  <Plug>(coc-fix-current)
" Show all diagnostics
nnoremap <silent> <leader>ldi  :<C-u>CocList diagnostics<cr>
"nmap <leader> ldip <Plug>(coc-diagnostic-prev)
"nmap <leader> ldin <Plug>(coc-diagnostic-next)
" Search workspace symbols
nnoremap <silent> <leader>ls  :<C-u>CocList -I symbols<cr>
nmap <leader>lr <Plug>(coc-rename)
nmap <leader>lre <Plug>(coc-references)
nmap <leader>ld <Plug>(coc-definition)
nmap <leader>li <Plug>(coc-implementation)
"nmap <leader>f  <Plug>(coc-format-selected)
nnoremap <leader> lk :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
