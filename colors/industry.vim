" Name:         Industry
" Author:       Shian Lee
" Maintainer:   Shian Lee
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 12 20:13:02 2019

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'industry'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

" Remark:	"industry" stands for 'industrial' color scheme. In industrial
"		HMI (Human-Machine-Interface) programming, using a standard color
"               scheme is mandatory in many cases (in traffic-lights for example):
"               LIGHT_RED is	    'Warning'
"               LIGHT_YELLOW is	    'Attention'
"               LIGHT_GREEN is	    'Normal'
"               LIGHT_MAGENTA is    'Warning-Attention' (light RED-YELLOW)
"               LIGHT_CYAN is	    'Attention-Normal'  (light YELLOW-GREEN).
"               BLACK is	    Dark-High-Contrast Background for maximum safety.
"               BLUE is		    Shade of BLACK (not supposed to get attention).
"
"               Industrial color scheme is by nature clear, safe and productive.
"               Yet, depends on the file type's syntax, it might appear incorrect.

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
" @suppress Error
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
" @suppress Todo
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
  hi Normal guifg=#dddddd guibg=Black
  " Syntax highlighting (other color-groups using default, see :help group-name):
  hi Comment guifg=#00aaaa gui=NONE cterm=NONE
  hi Constant guifg=#00ffff gui=NONE cterm=NONE
  hi Identifier guifg=#ff00ff gui=NONE cterm=NONE
  hi Function guifg=#00ff00 gui=NONE cterm=NONE
  hi Statement guifg=#ffffff gui=NONE cterm=NONE
  hi PreProc guifg=#ffff00 gui=NONE cterm=NONE
  hi Type guifg=#00ff00 gui=NONE cterm=NONE
  hi Special guifg=#ff0000 gui=NONE cterm=NONE
  hi Delimiter guifg=#ffff00 gui=NONE cterm=NONE
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=LightGray ctermbg=Black
  " Syntax highlighting (other color-groups using default, see :help group-name):
  hi Comment ctermfg=DarkCyan cterm=NONE
  hi Constant ctermfg=LightCyan cterm=NONE
  hi Identifier ctermfg=LightMagenta cterm=NONE
  hi Function ctermfg=LightGreen cterm=NONE
  hi Statement ctermfg=White cterm=NONE
  hi PreProc ctermfg=Yellow cterm=NONE
  hi Type ctermfg=LightGreen cterm=NONE
  hi Special ctermfg=Red cterm=NONE
  hi Delimiter ctermfg=Yellow cterm=NONE
  unlet s:t_Co
  finish
endif

