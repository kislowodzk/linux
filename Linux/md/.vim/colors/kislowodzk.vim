highlight clear
syntax reset

let g:colors_name="kislowodzk"

colorscheme default
set background=light

hi IncSearch        ctermbg=253          ctermfg=16     cterm=NONE
hi Search           ctermbg=130          ctermfg=16     cterm=NONE
hi Visual           cterm=reverse        ctermbg=NONE
hi ColorColumn      ctermbg=237
hi CursorLine       ctermbg=NONE         cterm=NONE
hi SpellBad         ctermbg=NONE         ctermbg=239
hi CursorLineNr     cterm=bold           ctermfg=130
hi LineNr           ctermfg=130
hi Delimiter        ctermbg=NONE         ctermfg=253    cterm=bold
hi Title            ctermfg=166          cterm=bold
hi vimwikiItalic    ctermfg=228          cterm=italic
hi htmlItalic       ctermfg=228          cterm=italic
hi markdownItalic   ctermfg=228          cterm=italic
hi vimwikiBold      ctermfg=228          cterm=bold
hi htmlBold         ctermfg=228          cterm=bold
hi markdownBold     ctermfg=228          cterm=bold
hi Identifier       ctermfg=109
hi Underlined       ctermfg=109          cterm=NONE
hi ModeMsg          ctermbg=NONE         ctermfg=3      cterm=bold
hi MatchParen       ctermbg=NONE         ctermbg=241
hi Todo             ctermbg=NONE         ctermfg=166    cterm=bold,italic
hi Folded           ctermbg=237          ctermfg=245    cterm=italic
hi Statement        ctermbg=NONE         ctermfg=9
hi String           ctermbg=NONE         ctermfg=2
hi Type             ctermbg=NONE         ctermfg=214
hi Constant         ctermbg=NONE         ctermfg=13
hi PreProc          ctermbg=NONE         ctermfg=14
hi Special          ctermbg=NONE         ctermfg=166

au InsertEnter * hi User1   cterm=bold   ctermfg=3      ctermbg=236
au InsertLeave * hi User1   cterm=bold   ctermfg=166    ctermbg=236
au InsertEnter * hi User9   cterm=bold   ctermfg=236    ctermbg=3
au InsertLeave * hi User9   cterm=bold   ctermfg=236    ctermbg=166
hi User1            cterm=bold           ctermfg=166    ctermbg=236
hi User9            cterm=bold           ctermfg=236    ctermbg=166
hi statusline       cterm=bold           ctermfg=249    ctermbg=none
hi statuslineNC     cterm=none           ctermfg=249    ctermbg=236
set laststatus=2
set statusline=%9*\ %*%1*\ %t\ %M\ %1*\ %=%1*\ %p%%\ \ %l:\ %2v\ \%9*\ %* 

