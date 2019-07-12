" Name:         Koehler
" Author:       Ron Aaron <ron@ronware.org>
" Maintainer:   Ron Aaron <ron@ronware.org>
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 12 20:13:02 2019

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'koehler'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

hi! link IncSearch Visual
hi! link String Constant
hi! link Character Constant
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Number
hi! link Function Identifier
hi! link Conditional Statement
hi! link Repeat Statement
hi! link Label Statement
hi! link Operator Statement
hi! link Keyword Statement
hi! link Exception Statement
hi! link Include PreProc
hi! link Define PreProc
hi! link Macro PreProc
hi! link PreCondit PreProc
hi! link StorageClass Type
hi! link Structure Type
hi! link Typedef Type
hi! link Tag Special
hi! link SpecialChar Special
hi! link Delimiter Special
hi! link SpecialComment Special
hi! link Debug Special

" @suppress ColorColumn
" @suppress Conceal
" @suppress CursorLineNr
" @suppress DiffAdd
" @suppress DiffChange
" @suppress DiffDelete
" @suppress DiffText
" @suppress FoldColumn
" @suppress Folded
" @suppress IncSearch
" @suppress Pmenu
" @suppress PmenuSbar
" @suppress PmenuSel
" @suppress PmenuThumb
" @suppress QuickFixLine
" @suppress SignColumn
" @suppress SpellBad
" @suppress SpellCap
" @suppress SpellLocal
" @suppress SpellRare
" @suppress StatusLineTerm
" @suppress StatusLineTermNC
" @suppress ToolbarButton
" @suppress ToolbarLine
" @suppress VertSplit
" @suppress VisualNOS
" @suppress WildMenu

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['Black', 'DarkRed', 'DarkGreen', 'DarkYellow',
        \ 'DarkBlue', 'DarkMagenta', 'DarkCyan', 'LightGray', 'DarkGray', 'Red',
        \ 'Green', 'Yellow', 'Blue', 'Magenta', 'Cyan', 'White']
  hi Normal guifg=White guibg=Black
  hi Scrollbar guifg=DarkCyan guibg=Cyan
  hi Menu guifg=Black guibg=Cyan
  hi SpecialKey guifg=#cc0000
  hi NonText guifg=#cc0000 gui=bold cterm=bold
  hi Directory guifg=#cc8000
  hi ErrorMsg guifg=White guibg=Red
  hi Search guifg=White guibg=Red
  hi MoreMsg guifg=SeaGreen gui=bold cterm=bold
  hi ModeMsg guifg=White guibg=Blue gui=bold cterm=bold
  hi LineNr guifg=Yellow
  hi Question guifg=Green gui=bold cterm=bold
  hi StatusLine guifg=Blue guibg=White gui=bold cterm=bold
  hi StatusLineNC guifg=White guibg=Blue
  hi Title guifg=Magenta gui=bold cterm=bold
  hi Visual guifg=NONE guibg=DarkGray gui=reverse cterm=reverse
  hi WarningMsg guifg=Red
  hi Cursor guifg=bg guibg=Green
  hi Comment guifg=#80a0ff
  hi Constant guifg=#ffa0a0
  hi Special guifg=Orange
  hi Identifier guifg=#40ffff
  hi Statement guifg=#ffff60 gui=bold cterm=bold
  hi PreProc guifg=#ff80ff
  hi Type guifg=#60ff60 gui=bold cterm=bold
  hi Error guifg=Red guibg=Black
  hi Todo guifg=Blue guibg=Yellow
  hi CursorLine guifg=NONE guibg=#555555
  hi CursorColumn guifg=NONE guibg=#555555
  hi MatchParen guifg=NONE guibg=Blue
  hi TabLine guifg=Blue guibg=White gui=bold cterm=bold
  hi TabLineFill guifg=Blue guibg=White gui=bold cterm=bold
  hi TabLineSel guifg=White guibg=Blue
  hi Underlined guifg=LightBlue gui=bold,underline cterm=bold,underline
  hi Ignore guifg=Black guibg=Black
  hi EndOfBuffer guifg=#cc0000 gui=bold cterm=bold
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=NONE ctermbg=NONE
  hi SpecialKey ctermfg=DarkRed cterm=bold
  hi NonText ctermfg=DarkRed cterm=bold
  hi Directory ctermfg=Brown cterm=bold
  hi ErrorMsg ctermfg=Gray ctermbg=Red cterm=bold
  hi Search ctermfg=White ctermbg=Red
  hi MoreMsg ctermfg=DarkGreen cterm=bold
  hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
  hi LineNr ctermfg=DarkCyan cterm=bold
  hi Question ctermfg=DarkGreen cterm=bold
  hi StatusLine ctermfg=LightBlue ctermbg=White cterm=bold
  hi StatusLineNC ctermfg=White ctermbg=LightBlue
  hi Title ctermfg=DarkMagenta cterm=bold
  hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse
  hi WarningMsg ctermfg=DarkRed cterm=bold
  hi Cursor ctermfg=bg ctermbg=Green
  hi Comment ctermfg=Cyan cterm=bold
  hi Constant ctermfg=Magenta cterm=bold
  hi Special ctermfg=Red cterm=bold
  hi Identifier ctermfg=Brown
  hi Statement ctermfg=Yellow cterm=bold
  hi PreProc ctermfg=DarkMagenta
  hi Type ctermfg=LightGreen cterm=bold
  hi Error ctermfg=DarkCyan ctermbg=Black
  hi Todo ctermfg=Black ctermbg=DarkCyan
  hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
  hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=underline
  hi MatchParen ctermfg=Blue ctermbg=DarkCyan
  hi TabLine ctermfg=LightBlue ctermbg=White cterm=bold
  hi TabLineFill ctermfg=LightBlue ctermbg=White cterm=bold
  hi TabLineSel ctermfg=White ctermbg=LightBlue
  hi Underlined ctermfg=LightBlue cterm=bold,underline
  hi Ignore ctermfg=Black ctermbg=Black
  hi EndOfBuffer ctermfg=DarkRed cterm=bold
  unlet s:t_Co
  finish
endif

if s:t_Co >= 2
  hi Normal term=NONE
  hi SpecialKey term=bold
  hi NonText term=bold
  hi Directory term=bold
  hi ErrorMsg term=standout
  hi Search term=reverse
  hi MoreMsg term=bold
  hi ModeMsg term=bold
  hi LineNr term=underline
  hi Question term=standout
  hi StatusLine term=bold,reverse
  hi StatusLineNC term=reverse
  hi Title term=bold
  hi Visual term=reverse
  hi WarningMsg term=standout
  hi Comment term=bold
  hi Constant term=underline
  hi Special term=bold
  hi Identifier term=underline
  hi Statement term=bold
  hi PreProc term=underline
  hi Type term=underline
  hi Error term=reverse
  hi Todo term=standout
  hi CursorLine term=underline
  hi CursorColumn term=underline
  hi MatchParen term=reverse
  hi TabLine term=bold,reverse
  hi TabLineFill term=bold,reverse
  hi TabLineSel term=reverse
  hi Underlined term=underline
  hi Ignore term=NONE
  hi EndOfBuffer term=bold
  unlet s:t_Co
  finish
endif

