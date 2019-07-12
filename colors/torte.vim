" Name:         Torte
" Author:       Thorsten Maerz <info@netztorte.de>
" Maintainer:   Thorsten Maerz <info@netztorte.de>
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 12 20:13:07 2019

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'torte'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

" grey on black
" optimized for TFT panels

" hardcoded colors :
" GUI Comment : #80a0ff = Light blue

" @suppress ColorColumn
" @suppress Conceal
" @suppress Constant
" @suppress CursorColumn
" @suppress CursorLine
" @suppress CursorLineNr
" @suppress DiffAdd
" @suppress DiffChange
" @suppress DiffDelete
" @suppress DiffText
" @suppress Directory
" @suppress EndOfBuffer
" @suppress Error
" @suppress ErrorMsg
" @suppress FoldColumn
" @suppress Folded
" @suppress Identifier
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
" @suppress PreProc
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
" @suppress Todo
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
  hi Normal guifg=gray80 guibg=Black
  hi Search guifg=Black guibg=Red gui=bold cterm=bold
  hi Visual guifg=#404040 gui=bold cterm=bold
  hi Cursor guifg=Black guibg=Green gui=bold cterm=bold
  hi Special guifg=Orange
  hi Comment guifg=#80a0ff
  hi StatusLine guifg=Blue guibg=White
  hi Statement guifg=Yellow gui=NONE cterm=NONE
  hi Type guifg=#60ff60 gui=NONE cterm=NONE
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=LightGray ctermbg=Black
  hi Search ctermfg=Black ctermbg=Red cterm=NONE
  hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse
  hi Cursor ctermfg=Black ctermbg=Green cterm=bold
  hi Special ctermfg=Brown
  hi Comment ctermfg=Blue
  hi StatusLine ctermfg=Blue ctermbg=White
  hi Statement ctermfg=Yellow cterm=NONE
  hi Type ctermfg=LightGreen cterm=NONE
  unlet s:t_Co
  finish
endif

