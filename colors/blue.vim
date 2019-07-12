" Name:         Blue
" Author:       Steven Vertigan <steven@vertigan.wattle.id.au>
" Maintainer:   Steven Vertigan <steven@vertigan.wattle.id.au>
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 12 20:12:59 2019

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'blue'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

" @suppress ColorColumn
" @suppress Conceal
" @suppress CursorColumn
" @suppress CursorLine
" @suppress CursorLineNr
" @suppress Directory
" @suppress EndOfBuffer
" @suppress Ignore
" @suppress MatchParen
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
" @suppress StatusLineTerm
" @suppress StatusLineTermNC
" @suppress TabLine
" @suppress TabLineFill
" @suppress TabLineSel
" @suppress ToolbarButton
" @suppress ToolbarLine
" @suppress VisualNOS
" @suppress WildMenu

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['Black', 'DarkRed', 'DarkGreen', 'DarkYellow',
        \ 'DarkBlue', 'DarkMagenta', 'DarkCyan', 'LightGray', 'DarkGray', 'Red',
        \ 'Green', 'Yellow', 'Blue', 'Magenta', 'Cyan', 'White']
  hi Normal guifg=Yellow guibg=DarkBlue
  hi NonText guifg=Magenta
  hi Comment guifg=Gray gui=bold cterm=bold
  hi Constant guifg=Cyan
  hi Identifier guifg=Gray
  hi Statement guifg=White gui=NONE cterm=NONE
  hi PreProc guifg=Green
  hi Type guifg=Orange
  hi Special guifg=Magenta
  hi Underlined guifg=Cyan gui=underline cterm=underline
  hi Label guifg=Yellow
  hi Operator guifg=Orange gui=bold cterm=bold
  hi ErrorMsg guifg=Orange guibg=DarkBlue
  hi WarningMsg guifg=Cyan guibg=DarkBlue gui=bold cterm=bold
  hi ModeMsg guifg=Yellow gui=NONE cterm=NONE
  hi MoreMsg guifg=Yellow gui=NONE cterm=NONE
  hi Error guifg=Red guibg=DarkBlue gui=underline cterm=underline
  hi Todo guifg=Black guibg=Orange
  hi Cursor guifg=Black guibg=White
  hi Search guifg=Black guibg=Orange
  hi IncSearch guifg=Black guibg=Yellow
  hi LineNr guifg=Cyan
  hi Title guifg=White gui=bold cterm=bold
  hi StatusLineNC guifg=Black guibg=Blue gui=NONE cterm=NONE
  hi StatusLine guifg=Cyan guibg=Blue gui=bold cterm=bold
  hi VertSplit guifg=Blue guibg=Blue gui=NONE cterm=NONE
  hi Visual guifg=Black guibg=DarkCyan
  hi DiffChange guifg=Black guibg=DarkGreen
  hi DiffText guifg=Black guibg=OliveDrab
  hi DiffAdd guifg=Black guibg=SlateBlue
  hi DiffDelete guifg=Black guibg=coral
  hi Folded guifg=Black guibg=Orange
  hi FoldColumn guifg=Black guibg=gray30
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=Yellow ctermbg=DarkBlue
  hi NonText ctermfg=LightMagenta
  hi Comment ctermfg=Gray ctermbg=DarkBlue
  hi Constant ctermfg=Cyan
  hi Identifier ctermfg=Red
  hi Statement ctermfg=White ctermbg=DarkBlue
  hi PreProc ctermfg=Green
  hi Type ctermfg=LightRed ctermbg=DarkBlue
  hi Special ctermfg=LightMagenta ctermbg=DarkBlue
  hi Underlined ctermfg=Cyan cterm=underline
  hi Label ctermfg=Yellow
  hi Operator ctermfg=LightRed ctermbg=DarkBlue
  hi ErrorMsg ctermfg=LightRed ctermbg=DarkRed
  hi WarningMsg ctermfg=Cyan ctermbg=NONE
  hi ModeMsg ctermfg=Yellow
  hi MoreMsg ctermfg=Yellow
  hi Error ctermfg=Red ctermbg=Red
  hi Todo ctermfg=Black ctermbg=DarkYellow
  hi Cursor ctermfg=Black ctermbg=White
  hi Search ctermfg=Black ctermbg=DarkYellow
  hi IncSearch ctermfg=Black ctermbg=DarkYellow
  hi LineNr ctermfg=Cyan
  hi Title ctermfg=LightMagenta cterm=bold
  hi StatusLineNC ctermfg=Black ctermbg=Blue
  hi StatusLine ctermfg=Cyan ctermbg=Blue
  hi VertSplit ctermfg=Blue ctermbg=Blue
  hi Visual ctermfg=Black ctermbg=DarkCyan
  hi DiffChange ctermfg=Black ctermbg=DarkGreen
  hi DiffText ctermfg=Black ctermbg=LightGreen
  hi DiffAdd ctermfg=Black ctermbg=Blue
  hi DiffDelete ctermfg=Black ctermbg=Cyan
  hi Folded ctermfg=Black ctermbg=Yellow
  hi FoldColumn ctermfg=Black ctermbg=Gray
  unlet s:t_Co
  finish
endif

if s:t_Co >= 2
  hi Normal term=NONE
  hi Visual term=reverse
  unlet s:t_Co
  finish
endif

