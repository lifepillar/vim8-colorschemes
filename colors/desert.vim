" Name:         Desert
" Version:      $Id: desert.vim,v 1.1 2004/06/13 19:30:30 vimboss Exp $
" Author:       Hans Fugal <hans@fugal.net>
" Maintainer:   Hans Fugal <hans@fugal.net>
" URL:          http://hans.fugal.net/vim/colors/desert.vim
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 12 20:13:01 2019

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'desert'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

" @suppress ColorColumn
" @suppress Conceal
" @suppress CursorColumn
" @suppress CursorLine
" @suppress CursorLineNr
" @suppress EndOfBuffer
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

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['Black', 'DarkRed', 'DarkGreen', 'DarkYellow',
        \ 'DarkBlue', 'DarkMagenta', 'DarkCyan', 'LightGray', 'DarkGray', 'Red',
        \ 'Green', 'Yellow', 'Blue', 'Magenta', 'Cyan', 'White']
  hi Normal guifg=white guibg=gray20
  hi Cursor guifg=SlateGray guibg=khaki
  hi VertSplit guifg=gray50 guibg=#c2bfa5 gui=NONE cterm=NONE
  hi Folded guifg=gold guibg=gray30
  hi FoldColumn guifg=tan guibg=gray30
  hi IncSearch guifg=SlateGray guibg=khaki
  hi ModeMsg guifg=goldenrod
  hi MoreMsg guifg=SeaGreen
  hi NonText guifg=LightBlue guibg=gray30
  hi Question guifg=SpringGreen
  hi Search guifg=wheat guibg=peru
  hi SpecialKey guifg=YellowGreen
  hi StatusLine guifg=black guibg=#c2bfa5 gui=NONE cterm=NONE
  hi StatusLineNC guifg=gray50 guibg=#c2bfa5 gui=NONE cterm=NONE
  hi Title guifg=IndianRed
  hi Visual guifg=khaki guibg=OliveDrab gui=NONE cterm=NONE
  hi WarningMsg guifg=salmon
  hi DiffAdd guifg=NONE guibg=DarkBlue
  hi DiffChange guifg=NONE guibg=DarkMagenta
  hi DiffDelete guifg=blue guibg=DarkCyan gui=bold cterm=bold
  hi DiffText guifg=NONE guibg=red gui=bold cterm=bold
  hi Directory guifg=cyan guibg=NONE
  hi Error guifg=white guibg=red
  hi ErrorMsg guifg=white guibg=red
  hi LineNr guifg=yellow guibg=NONE
  hi VisualNOS guifg=NONE guibg=NONE guisp=NONE gui=bold,underline ctermfg=NONE ctermbg=NONE cterm=bold,underline
  hi WildMenu guifg=black guibg=yellow
  " syntax highlighting groups
  hi Comment guifg=SkyBlue
  hi Constant guifg=#ffa0a0
  hi Identifier guifg=PaleGreen
  hi Statement guifg=khaki
  hi PreProc guifg=IndianRed
  hi Type guifg=DarkKhaki
  hi Special guifg=NavajoWhite
  hi Ignore guifg=gray40
  hi Todo guifg=OrangeRed guibg=yellow2
  hi Underlined guifg=#80a0ff guibg=NONE gui=underline cterm=underline
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=NONE ctermbg=NONE
  hi SpecialKey ctermfg=DarkGreen
  hi NonText ctermfg=DarkBlue ctermbg=NONE cterm=bold
  hi Directory ctermfg=DarkCyan ctermbg=NONE
  hi ErrorMsg ctermfg=7 ctermbg=1 cterm=bold
  hi IncSearch ctermfg=Yellow ctermbg=Green cterm=NONE
  hi Search ctermfg=Gray ctermbg=Blue cterm=NONE
  hi MoreMsg ctermfg=DarkGreen
  hi ModeMsg ctermfg=Brown cterm=NONE
  hi LineNr ctermfg=3 ctermbg=NONE
  hi Question ctermfg=Green
  hi StatusLine ctermfg=NONE ctermbg=NONE cterm=bold,reverse
  hi StatusLineNC ctermfg=NONE ctermbg=NONE cterm=reverse
  hi VertSplit ctermfg=NONE ctermbg=NONE cterm=reverse
  hi Title ctermfg=5
  hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse
  hi VisualNOS cterm=bold,underline
  hi WarningMsg ctermfg=1
  hi WildMenu ctermfg=0 ctermbg=3
  hi Folded ctermfg=DarkGray ctermbg=NONE
  hi FoldColumn ctermfg=DarkGray ctermbg=NONE
  hi DiffAdd ctermfg=NONE ctermbg=4
  hi DiffChange ctermfg=NONE ctermbg=5
  hi DiffDelete ctermfg=4 ctermbg=6 cterm=bold
  hi DiffText ctermfg=NONE ctermbg=1 cterm=bold
  hi Comment ctermfg=DarkCyan
  hi Constant ctermfg=Brown
  hi Special ctermfg=5
  hi Identifier ctermfg=6
  hi Statement ctermfg=3
  hi PreProc ctermfg=5
  hi Type ctermfg=2
  hi Underlined ctermfg=5 ctermbg=NONE cterm=underline
  hi Ignore ctermfg=DarkGray cterm=bold
  hi Error ctermfg=7 ctermbg=1 cterm=bold
  hi Cursor ctermfg=NONE ctermbg=NONE
  hi Todo ctermfg=Black ctermbg=Yellow
  unlet s:t_Co
  finish
endif

