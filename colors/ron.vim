" Name:         Ron
" Author:       Ron Aaron <ron@ronware.org>
" Maintainer:   Ron Aaron <ron@ronware.org>
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 12 20:13:05 2019

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'ron'

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
" @suppress ModeMsg
" @suppress MoreMsg
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
" @suppress Underlined
" @suppress VertSplit
" @suppress VisualNOS
" @suppress WildMenu

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['Black', 'DarkRed', 'DarkGreen', 'DarkYellow',
        \ 'DarkBlue', 'DarkMagenta', 'DarkCyan', 'LightGray', 'DarkGray', 'Red',
        \ 'Green', 'Yellow', 'Blue', 'Magenta', 'Cyan', 'White']
  hi Normal guifg=Cyan guibg=Black
  hi NonText guifg=Yellow guibg=#303030
  hi Comment guifg=Green
  hi Constant guifg=Cyan gui=bold cterm=bold
  hi Identifier guifg=Cyan gui=NONE cterm=NONE
  hi Statement guifg=LightBlue gui=NONE cterm=NONE
  hi PreProc guifg=pink2
  hi Type guifg=SeaGreen gui=bold cterm=bold
  hi Special guifg=Yellow
  hi ErrorMsg guifg=Black guibg=Red
  hi WarningMsg guifg=Black guibg=Green
  hi Error guifg=White guibg=Red
  hi Todo guifg=Black guibg=Orange
  hi Cursor guifg=#00ff00 guibg=#60a060
  hi Search guifg=Black guibg=DarkGray gui=bold cterm=bold
  hi IncSearch guifg=NONE guibg=SteelBlue gui=NONE cterm=NONE
  hi LineNr guifg=DarkGray
  hi Title guifg=DarkGray
  hi StatusLineNC guifg=LightBlue guibg=DarkBlue gui=NONE cterm=NONE
  hi StatusLine guifg=Cyan guibg=Blue gui=bold cterm=bold
  hi Label guifg=gold2
  hi Operator guifg=Orange
  hi Visual guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi DiffChange guifg=NONE guibg=DarkGreen
  hi DiffText guifg=NONE guibg=OliveDrab
  hi DiffAdd guifg=NONE guibg=SlateBlue
  hi DiffDelete guifg=NONE guibg=coral
  hi Folded guifg=NONE guibg=gray30
  hi FoldColumn guifg=White guibg=gray30
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=NONE ctermbg=NONE cterm=NONE
  hi NonText ctermfg=Blue ctermbg=NONE
  hi Comment ctermfg=Cyan
  hi Constant ctermfg=Magenta
  hi Identifier ctermfg=Cyan cterm=bold
  hi Statement ctermfg=Yellow
  hi PreProc ctermfg=LightBlue
  hi Type ctermfg=LightGreen
  hi Special ctermfg=LightRed
  hi ErrorMsg ctermfg=White ctermbg=DarkRed
  hi WarningMsg ctermfg=LightRed ctermbg=NONE
  hi Error ctermfg=White ctermbg=Red
  hi Todo ctermfg=Black ctermbg=Yellow
  hi Cursor ctermfg=NONE ctermbg=NONE
  hi Search ctermfg=Black ctermbg=Yellow
  hi IncSearch ctermfg=NONE ctermbg=NONE cterm=reverse
  hi LineNr ctermfg=Yellow
  hi Title ctermfg=LightMagenta
  hi StatusLineNC ctermfg=NONE ctermbg=NONE cterm=reverse
  hi StatusLine ctermfg=NONE ctermbg=NONE cterm=bold,reverse
  hi Label ctermfg=NONE ctermbg=NONE
  hi Operator ctermfg=NONE ctermbg=NONE
  hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse
  hi DiffChange ctermfg=NONE ctermbg=DarkMagenta
  hi DiffText ctermfg=NONE ctermbg=Red
  hi DiffAdd ctermfg=NONE ctermbg=DarkBlue
  hi DiffDelete ctermfg=Blue ctermbg=DarkCyan
  hi Folded ctermfg=Cyan ctermbg=NONE
  hi FoldColumn ctermfg=Cyan ctermbg=DarkGray
  unlet s:t_Co
  finish
endif

if s:t_Co >= 2
  hi Normal term=NONE
  hi Visual term=reverse
  unlet s:t_Co
  finish
endif

