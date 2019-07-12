" Name:         Zellner
" Author:       Ron Aaron <ron@ronware.org>
" Maintainer:   Ron Aaron <ron@ronware.org>
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 12 20:13:07 2019

set background=light

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'zellner'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

hi! link MoreMsg Comment
hi! link ErrorMsg Visual
hi! link WarningMsg ErrorMsg
hi! link Question Comment
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
" @suppress Ignore
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
" @suppress SignColumn
" @suppress SpecialKey
" @suppress SpellBad
" @suppress SpellCap
" @suppress SpellLocal
" @suppress SpellRare
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
" @suppress VisualNOS
" @suppress WarningMsg
" @suppress WildMenu

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['Black', 'DarkRed', 'DarkGreen', 'DarkYellow',
        \ 'DarkBlue', 'DarkMagenta', 'DarkCyan', 'LightGray', 'DarkGray', 'Red',
        \ 'Green', 'Yellow', 'Blue', 'Magenta', 'Cyan', 'White']
  hi Normal guifg=Black guibg=White
  hi Comment guifg=Red
  hi Constant guifg=Magenta
  hi Special guifg=Magenta
  hi Identifier guifg=Blue
  hi Statement guifg=Brown gui=NONE cterm=NONE
  hi PreProc guifg=Purple
  hi Type guifg=Blue gui=NONE cterm=NONE
  hi Visual guifg=Black guibg=Yellow gui=NONE cterm=NONE
  hi Search guifg=Black guibg=Cyan gui=NONE cterm=NONE
  hi Tag guifg=DarkGreen
  hi Error guifg=White guibg=Red
  hi Todo guifg=Blue guibg=Yellow
  hi StatusLine guifg=Yellow guibg=DarkGray gui=NONE cterm=NONE
  unlet s:t_Co
  finish
endif

if s:t_Co >= 16
  hi Normal ctermfg=NONE ctermbg=NONE
  hi Comment ctermfg=Red
  hi Constant ctermfg=Magenta
  hi Special ctermfg=Magenta
  hi Identifier ctermfg=Blue
  hi Statement ctermfg=DarkRed
  hi PreProc ctermfg=Magenta
  hi Type ctermfg=Blue
  hi Visual ctermfg=Yellow ctermbg=Red
  hi Search ctermfg=Black ctermbg=Cyan
  hi Tag ctermfg=DarkGreen
  hi Error ctermfg=15 ctermbg=9
  hi Todo ctermfg=Black ctermbg=Yellow
  hi StatusLine ctermfg=Yellow ctermbg=DarkGray cterm=NONE
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
  hi Visual term=reverse
  hi Search term=reverse
  hi Tag term=bold
  hi Error term=reverse
  hi Todo term=standout
  hi StatusLine term=bold,reverse
  unlet s:t_Co
  finish
endif

