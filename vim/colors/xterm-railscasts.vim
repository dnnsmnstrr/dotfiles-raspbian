" Vim color file
"   This file was generated by Palette
"   http://rubygems.org/gems/palette
"
" Author: Joshua Steele
" Notes:  Port of Railscasts color scheme for terminal vim based mostly on https://github.com/ryanb/dotfiles/blob/master/vim/colors/railscasts.vim

hi clear
if version > 580
    if exists("syntax_on")
        syntax reset
    endif
endif

let colors_name="xterm-railscasts"

if has("gui_running")
    set background=dark
endif

hi Normal         guifg=#E6E1DC ctermfg=254  guibg=#222222 ctermbg=235  gui=NONE cterm=NONE
hi Cursor         guifg=#FFFFFF ctermfg=231  gui=NONE cterm=NONE
hi CursorLine     guifg=#333435 ctermfg=236  gui=NONE cterm=NONE
hi LineNr         guifg=#666666 ctermfg=241  gui=NONE cterm=NONE
hi Visual         guifg=#5A647E ctermfg=60   gui=NONE cterm=NONE
hi Directory      guifg=#A5C160 ctermfg=143  gui=NONE cterm=NONE
hi Error          guifg=#FFFFFF ctermfg=231  guibg=#990000 ctermbg=88   gui=NONE cterm=NONE
hi MatchParen     guifg=NONE    ctermfg=NONE guibg=#131313 ctermbg=233  gui=NONE cterm=NONE
hi Title          guifg=#E6E1DC ctermfg=254  gui=NONE cterm=NONE
hi SignColumn     guifg=#222222 ctermfg=235  gui=NONE cterm=NONE
hi NonText        guifg=#383838 ctermfg=237  guibg=#252525 ctermbg=235  gui=NONE cterm=NONE
hi Search         guifg=#5A647E ctermfg=60   gui=NONE cterm=NONE
hi VertSplit      guifg=#383838 ctermfg=237  guibg=#383838 ctermbg=237  gui=NONE cterm=NONE
hi Comment        guifg=#BC9458 ctermfg=137  gui=ITALIC cterm=NONE
hi Folded         guifg=#F6F3E8 ctermfg=255  guibg=#444444 ctermbg=238  gui=BOLD cterm=BOLD
hi Directory      guifg=#A5C261 ctermfg=143  gui=NONE cterm=NONE
hi Pmenu          guifg=#F6F3E8 ctermfg=255  guibg=#444444 ctermbg=238  gui=NONE cterm=NONE
hi PmenuSel       guifg=#000000 ctermfg=16   guibg=#A5C261 ctermbg=143  gui=NONE cterm=NONE
hi PMenuSbar      guifg=#5A647E ctermfg=60   gui=NONE cterm=NONE
hi PMenuThumb     guifg=#AAAAAA ctermfg=248  gui=NONE cterm=NONE
hi String         guifg=#A5C261 ctermfg=143  gui=NONE cterm=NONE
hi Constant       guifg=#87AFFF ctermfg=111  gui=NONE cterm=NONE
hi Define         guifg=#D78700 ctermfg=172  gui=NONE cterm=NONE
hi Delimiter      guifg=#519F50 ctermfg=71   gui=NONE cterm=NONE
hi Function       guifg=#E8BF6A ctermfg=179  gui=NONE cterm=NONE
hi Identifier     guifg=#CFCFFF ctermfg=189  gui=NONE cterm=NONE
hi Statement      guifg=#D78700 ctermfg=172  gui=NONE cterm=NONE
hi Type           guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE gui=NONE cterm=NONE
hi railsMethod    guifg=#AF0000 ctermfg=124  gui=NONE cterm=NONE
hi erubyDelimiter guifg=#FFFFFF ctermfg=231  gui=NONE cterm=NONE
hi DiffAdd        guifg=#E6E1DC ctermfg=254  guibg=#144212 ctermbg=233  gui=NONE cterm=NONE
hi DiffDelete     guifg=#E6E1DC ctermfg=254  guibg=#660000 ctermbg=52   gui=NONE cterm=NONE
hi xmlTag         guifg=#E8BF6A ctermfg=179  gui=NONE cterm=NONE

hi link Todo                Comment
hi link vimFold             Folded
hi link FoldColumn          Folded
hi link Number              String
hi link rubyStringDelimiter String
hi link Include             Define
hi link Keyword             Define
hi link Macro               Define
hi link PreCondit           Statement
hi link PreProc             Statement
hi link xmlTagName          xmlTag
hi link xmlEndTag           xmlTag
hi link xmlArg              xmlTag
hi link htmlArg             xmlTag
hi link htmlTag             xmlTag
hi link htmlTagName         xmlTag
hi link htmlEndTag          xmlTag
