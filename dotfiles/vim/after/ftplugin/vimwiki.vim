VimwikiTOC " update table of contents
setlocal foldlevel=0
if expand('%:t') == 'index.md' 
       VimwikiGenerateLinks 
endif
