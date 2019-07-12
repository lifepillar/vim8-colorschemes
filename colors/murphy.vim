" Name:         Murphy
" Author:       Ron Aaron <ron@ronware.org>
" Maintainer:   Ron Aaron <ron@ronware.org>
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 12 20:13:04 2019

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'murphy'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

" @suppress ColorColumn
" @suppress Conceal
" @suppress CursorColumn
" @suppress CursorLine
" @suppress CursorLineNr
" @suppress DiffAdd
" @suppress DiffChange
" @suppress DiffDelete
" @suppress DiffText
" @suppress EndOfBuffer
" @suppress FoldColumn
" @suppress Folded
" @suppress MatchParen
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
" @suppress TabLine
" @suppress TabLineFill
" @suppress TabLineSel
" @suppress ToolbarButton
" @suppress ToolbarLine
" @suppress Underlined
" @suppress VertSplit
" @suppress VisualNOS
" @suppress WildMenu

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['Black', 'DarkRed', 'DarkGreen', 'DarkYellow',
        \ 'DarkBlue', 'DarkMagenta', 'DarkCyan', 'LightGray', 'DarkGray', 'Red',
        \ 'Green', 'Yellow', 'Blue', 'Magenta', 'Cyan', 'White']
  hi Normal guifg=LightGreen guibg=Black
  hi Comment guifg=Orange
  hi Constant guifg=White gui=NONE cterm=NONE
  hi Identifier guifg=#00ffff
  hi Ignore guifg=bg
  hi PreProc guifg=wheat
  hi Search guifg=White guibg=Blue
  hi Special guifg=Magenta
  hi Statement guifg=#ffff00 gui=NONE cterm=NONE
  hi Type guifg=Gray gui=NONE cterm=NONE
  hi Error guifg=White guibg=Red
  hi Todo guifg=Blue guibg=Yellow
  " From the source:
  hi Cursor guifg=orchid guibg=fg
  hi Directory guifg=Cyan
  hi ErrorMsg guifg=White guibg=Red
  hi IncSearch guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi LineNr guifg=Yellow
  hi ModeMsg guifg=NONE guibg=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
  hi MoreMsg guifg=SeaGreen gui=bold cterm=bold
  hi NonText guifg=Blue gui=bold cterm=bold
  hi Question guifg=Cyan
  hi SpecialKey guifg=Cyan
  hi StatusLine guifg=White guibg=DarkBlue gui=NONE cterm=NONE
  hi StatusLineNC guifg=White guibg=#333333 gui=NONE cterm=NONE
  hi Title guifg=pink gui=bold cterm=bold
  hi WarningMsg guifg=Red
  hi Visual guifg=White guibg=DarkGreen gui=NONE cterm=NONE
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=LightGreen ctermbg=Black
  hi Comment ctermfg=LightRed
  hi Constant ctermfg=LightGreen
  hi Identifier ctermfg=LightCyan
  hi Ignore ctermfg=Black
  hi PreProc ctermfg=LightBlue
  hi Search ctermfg=Black ctermbg=Yellow
  hi Special ctermfg=LightRed
  hi Statement ctermfg=Yellow cterm=NONE
  hi Type ctermfg=LightGreen
  hi Error ctermfg=White ctermbg=Red
  hi Todo ctermfg=Black ctermbg=Yellow
  " From the source:
  hi Cursor ctermfg=NONE ctermbg=NONE
  hi Directory ctermfg=LightCyan
  hi ErrorMsg ctermfg=White ctermbg=DarkRed
  hi IncSearch ctermfg=NONE ctermbg=NONE cterm=reverse
  hi LineNr ctermfg=Yellow
  hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
  hi MoreMsg ctermfg=LightGreen
  hi NonText ctermfg=Blue
  hi Question ctermfg=LightGreen
  hi SpecialKey ctermfg=LightBlue
  hi StatusLine ctermfg=NONE ctermbg=NONE cterm=reverse
  hi StatusLineNC ctermfg=NONE ctermbg=NONE cterm=reverse
  hi Title ctermfg=LightMagenta
  hi WarningMsg ctermfg=LightRed
  hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse
  unlet s:t_Co
  finish
endif

if s:t_Co >= 2
  hi Normal term=NONE
  hi Comment term=bold
  hi Constant term=underline
  hi Identifier term=underline
  hi PreProc term=underline
  hi Search term=reverse
  hi Special term=bold
  hi Statement term=bold
  hi Error term=reverse
  hi Todo term=standout
  hi Directory term=bold
  hi ErrorMsg term=standout
  hi IncSearch term=reverse
  hi LineNr term=underline
  hi ModeMsg term=bold
  hi MoreMsg term=bold
  hi NonText term=bold
  hi Question term=standout
  hi SpecialKey term=bold
  hi StatusLine term=bold,reverse
  hi StatusLineNC term=reverse
  hi Title term=bold
  hi WarningMsg term=standout
  hi Visual term=reverse
  unlet s:t_Co
  finish
endif

