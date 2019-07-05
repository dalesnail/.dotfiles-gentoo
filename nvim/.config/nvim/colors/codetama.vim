" Codetama
" Author: DaleSnail <cameron@dalesnail.com>
" Maintainer: DaleSnail <cameron@dalesnail.com>
" Notes: To check the meaning of the highlight groups, :help 'highlight'

" --------------------------------
set background=dark
" - or ---------------------------
" set background=light
" --------------------------------

highlight clear
if exists("syntax_on")
    syntax reset
endif
let colors_name="codetama"

"----------------------------------------------------------------
" General settings                                              |
"----------------------------------------------------------------
"----------------------------------------------------------------
" Syntax group   | Foreground    | Background    | Style        |
"----------------------------------------------------------------

" --------------------------------
" Editor settings
" --------------------------------
hi Normal          guifg=#ffffff    guibg=none    gui=none
hi Cursor          guifg=#ffffff    guibg=none    gui=none
hi CursorLine      guifg=#ffffff    guibg=#DCC045    gui=none
hi LineNr          guifg=none    guibg=none    gui=none
hi CursorLineNR    guifg=none    guibg=none    gui=none

" -----------------
" - Number column -
" -----------------
hi CursorColumn    guifg=none    guibg=none    gui=none
hi FoldColumn      guifg=none    guibg=none    gui=none
hi SignColumn      guifg=none    guibg=none    gui=none
hi Folded          guifg=none    guibg=none    gui=none

" -------------------------
" - Window/Tab delimiters - 
" -------------------------
hi VertSplit       guifg=none    guibg=none    gui=none
hi ColorColumn     guifg=none    guibg=none    gui=none
hi TabLine         guifg=none    guibg=none    gui=none
hi TabLineFill     guifg=none    guibg=none    gui=none
hi TabLineSel      guifg=none    guibg=none    gui=none

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory       guifg=none    guibg=none    gui=none
hi Search          guifg=none    guibg=none    gui=none
hi IncSearch       guifg=none    guibg=none    gui=none

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine      guifg=none    guibg=none    gui=none
hi StatusLineNC    guifg=none    guibg=none    gui=none
hi WildMenu        guifg=none    guibg=none    gui=none
hi Question        guifg=none    guibg=none    gui=none
hi Title           guifg=none    guibg=none    gui=none
hi ModeMsg         guifg=none    guibg=none    gui=none
hi MoreMsg         guifg=none    guibg=none    gui=none

" --------------
" - Visual aid -
" --------------
hi MatchParen      guifg=#FFF931    guibg=none    gui=none
hi Visual          guifg=#ffffff    guibg=#c56257    gui=none
hi VisualNOS       guifg=none    guibg=none    gui=none
hi NonText         guifg=none    guibg=none    gui=none

hi Todo            guifg=none    guibg=none    gui=none
hi Underlined      guifg=none    guibg=none    gui=none
hi Error           guifg=none    guibg=none    gui=none
hi ErrorMsg        guifg=none    guibg=none    gui=none
hi WarningMsg      guifg=none    guibg=none    gui=none
hi Ignore          guifg=none    guibg=none    gui=none
hi SpecialKey      guifg=none    guibg=none    gui=none

" --------------------------------
" Variable types
" --------------------------------
hi Constant        guifg=#FF7600    guibg=none    gui=none
hi String          guifg=#ECE8AF    guibg=none    gui=none
hi StringDelimiter guifg=none       guibg=none    gui=none
hi Character       guifg=none       guibg=none    gui=none
hi Number          guifg=none       guibg=none    gui=none
hi Boolean         guifg=none       guibg=none    gui=none
hi Float           guifg=none       guibg=none    gui=none

hi Identifier      guifg=none    guibg=none    gui=none
hi Function        guifg=#DCC045    guibg=none    gui=none

" --------------------------------
" Language constructs
" --------------------------------
hi Statement       guifg=#FF7600    guibg=none    gui=none
hi Conditional     guifg=#FF7600    guibg=none    gui=none
hi Repeat          guifg=none    guibg=none    gui=none
hi Label           guifg=#666666    guibg=none    gui=none
hi Operator        guifg=#666666    guibg=none    gui=none
hi Keyword         guifg=#DCC045 guibg=none    gui=none
hi Exception       guifg=none    guibg=none    gui=none
hi Comment         guifg=#666666    guibg=none    gui=none

hi Special         guifg=none    guibg=none    gui=none
hi SpecialChar     guifg=none    guibg=none    gui=none
hi Tag             guifg=#DCC045    guibg=none    gui=none
hi Delimiter       guifg=none    guibg=none    gui=none
hi SpecialComment  guifg=#D37A70 guibg=none    gui=none
hi Debug           guifg=none    guibg=none    gui=none

" ----------
" - C like -
" ----------
hi PreProc         guifg=none    guibg=none    gui=none
hi Include         guifg=none    guibg=none    gui=none
hi Define          guifg=none    guibg=none    gui=none
hi Macro           guifg=none    guibg=none    gui=none
hi PreCondit       guifg=none    guibg=none    gui=none

hi Type            guifg=none    guibg=none    gui=none
hi StorageClass    guifg=none    guibg=none    gui=none
hi Structure       guifg=none    guibg=none    gui=none
hi Typedef         guifg=none    guibg=none    gui=none

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd         guifg=none    guibg=none    gui=none
hi DiffChange      guifg=none    guibg=none    gui=none
hi DiffDelete      guifg=none    guibg=none    gui=none
hi DiffText        guifg=none    guibg=none    gui=none

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           guifg=none    guibg=none    gui=none
hi PmenuSel        guifg=none    guibg=none    gui=none
hi PmenuSbar       guifg=none    guibg=none    gui=none
hi PmenuThumb      guifg=none    guibg=none    gui=none

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        guifg=none    guibg=none    gui=none
hi SpellCap        guifg=none    guibg=none    gui=none
hi SpellLocal      guifg=none    guibg=none    gui=none
hi SpellRare       guifg=none    guibg=none    gui=none

"--------------------------------------------------------------------
" Specific settings                                                 |
"--------------------------------------------------------------------
