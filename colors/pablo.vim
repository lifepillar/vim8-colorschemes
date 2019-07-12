" Name:         Pablo
" Author:       Ron Aaron <ron@ronware.org>
" Maintainer:   Ron Aaron <ron@ronware.org>
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 12 20:13:04 2019

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'pablo'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

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
" @suppress Visual
" @suppress VisualNOS
" @suppress WarningMsg
" @suppress WildMenu

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['Black', 'DarkRed', 'DarkGreen', 'DarkYellow',
        \ 'DarkBlue', 'DarkMagenta', 'DarkCyan', 'LightGray', 'DarkGray', 'Red',
        \ 'Green', 'Yellow', 'Blue', 'Magenta', 'Cyan', 'White']
  hi Normal guifg=#ffffff guibg=#000000
  hi Comment guifg=#808080
  hi Constant guifg=#00ffff gui=NONE cterm=NONE
  hi Identifier guifg=#00c0c0
  hi Statement guifg=#c0c000 gui=bold cterm=bold
  hi PreProc guifg=#00ff00
  hi Type guifg=#00c000
  hi Special guifg=#0000ff
  hi Error guifg=NONE guibg=#ff0000
  hi Todo guifg=#000080 guibg=#c0c000
  hi Directory guifg=#00c000
  hi StatusLine guifg=#ffff00 guibg=#0000ff gui=NONE cterm=NONE
  hi Search guifg=#000000 guibg=#c0c000
  unlet s:t_Co
  finish
endif

if s:t_Co >= 16
  hi Normal ctermfg=NONE ctermbg=NONE
  hi Comment ctermfg=8
  hi Constant ctermfg=14 cterm=NONE
  hi Identifier ctermfg=6
  hi Statement ctermfg=3 cterm=bold
  hi PreProc ctermfg=10
  hi Type ctermfg=2
  hi Special ctermfg=12
  hi Error ctermfg=NONE ctermbg=9
  hi Todo ctermfg=4 ctermbg=3
  hi Directory ctermfg=2
  hi StatusLine ctermfg=11 ctermbg=12 cterm=NONE
  hi Search ctermfg=0 ctermbg=3
  unlet s:t_Co
  finish
endif

