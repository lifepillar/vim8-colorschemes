" Name:         Elflord
" Author:       Ron Aaron <ron@ronware.org>
" Maintainer:   Ron Aaron <ron@ronware.org>
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 12 20:13:01 2019

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'elflord'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

hi! link String Constant
hi! link Character Constant
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Number
hi! link Conditional Repeat
hi! link Label Statement
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
" @suppress Cursor
" @suppress CursorColumn
" @suppress CursorLine
" @suppress CursorLineNr
" @suppress DiffAdd
" @suppress DiffChange
" @suppress DiffDelete
" @suppress DiffText
" @suppress Directory
" @suppress EndOfBuffer
" @suppress ErrorMsg
" @suppress FoldColumn
" @suppress Folded
" @suppress IncSearch
" @suppress LineNr
" @suppress MatchParen
" @suppress ModeMsg
" @suppress MoreMsg
" @suppress NonText
" @suppress Pmenu
" @suppress PmenuSbar
" @suppress PmenuSel
" @suppress PmenuThumb
" @suppress Question
" @suppress QuickFixLine
" @suppress Search
" @suppress SignColumn
" @suppress SpecialKey
" @suppress SpellBad
" @suppress SpellCap
" @suppress SpellLocal
" @suppress SpellRare
" @suppress StatusLine
" @suppress StatusLineNC
" @suppress StatusLineTerm
" @suppress StatusLineTermNC
" @suppress TabLine
" @suppress TabLineFill
" @suppress TabLineSel
" @suppress Title
" @suppress ToolbarButton
" @suppress ToolbarLine
" @suppress Underlined
" @suppress VertSplit
" @suppress Visual
" @suppress VisualNOS
" @suppress WarningMsg
" @suppress WildMenu

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['Black', 'DarkRed', 'DarkGreen', 'DarkYellow',
        \ 'DarkBlue', 'DarkMagenta', 'DarkCyan', 'LightGray', 'DarkGray', 'Red',
        \ 'Green', 'Yellow', 'Blue', 'Magenta', 'Cyan', 'White']
  hi Normal guifg=Cyan guibg=Black
  hi Comment guifg=#80a0ff
  hi Constant guifg=Magenta
  hi Special guifg=Red
  hi Identifier guifg=#40ffff
  hi Statement guifg=#aa4444 gui=bold cterm=bold
  hi PreProc guifg=#ff80ff
  hi Type guifg=#60ff60 gui=bold cterm=bold
  hi Function guifg=White
  hi Repeat guifg=White
  hi Operator guifg=Red
  hi Ignore guifg=bg
  hi Error guifg=White guibg=Red
  hi Todo guifg=Blue guibg=Yellow
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=NONE ctermbg=NONE
  hi Comment ctermfg=DarkCyan
  hi Constant ctermfg=Magenta
  hi Special ctermfg=DarkMagenta
  hi Identifier ctermfg=Cyan cterm=bold
  hi Statement ctermfg=Yellow
  hi PreProc ctermfg=LightBlue
  hi Type ctermfg=LightGreen
  hi Function ctermfg=White
  hi Repeat ctermfg=White
  hi Operator ctermfg=Red
  hi Ignore ctermfg=Black
  hi Error ctermfg=White ctermbg=Red
  hi Todo ctermfg=Black ctermbg=Yellow
  unlet s:t_Co
  finish
endif

if s:t_Co >= 2
  hi Normal term=NONE
  hi Comment term=bold
  hi Constant term=underline
  hi Special term=bold
  hi Identifier term=underline
  hi Statement term=bold
  hi PreProc term=underline
  hi Type term=underline
  hi Function term=bold
  hi Repeat term=underline
  hi Error term=reverse
  hi Todo term=standout
  unlet s:t_Co
  finish
endif

