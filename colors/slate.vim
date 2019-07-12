" Name:         Slate
" Author:       Ralph Amissah <ralph@amissah.com>
" Maintainer:   Ralph Amissah <ralph@amissah.com>
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 12 20:13:07 2019

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'slate'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

" (originally looked at desert Hans Fugal <hans@fugal.net> http://hans.fugal.net/vim/colors/desert.vim (2003/05/06)

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
  hi Normal guifg=white guibg=gray15
  hi Cursor guifg=SlateGray guibg=khaki
  hi VertSplit guifg=gray40 guibg=gray2 gui=NONE cterm=NONE
  hi Folded guifg=gray40 guibg=black
  hi FoldColumn guifg=gray20 guibg=black
  hi IncSearch guifg=green guibg=black
  hi ModeMsg guifg=goldenrod
  hi MoreMsg guifg=SeaGreen
  hi NonText guifg=RoyalBlue guibg=gray15
  hi Question guifg=SpringGreen
  hi Search guifg=wheat guibg=peru
  hi SpecialKey guifg=YellowGreen
  hi StatusLine guifg=black guibg=#c2bfa5 gui=NONE cterm=NONE
  hi StatusLineNC guifg=gray40 guibg=#c2bfa5 gui=NONE cterm=NONE
  hi Title guifg=gold gui=bold cterm=bold
  hi Statement guifg=CornflowerBlue
  hi Visual guifg=khaki guibg=OliveDrab gui=NONE cterm=NONE
  hi WarningMsg guifg=salmon
  hi String guifg=SkyBlue
  hi Comment guifg=gray40
  hi Constant guifg=#ffa0a0
  hi Special guifg=DarkKhaki
  hi Identifier guifg=salmon
  hi Include guifg=red
  hi PreProc guifg=red guibg=white
  hi Operator guifg=red
  hi Define guifg=gold gui=bold cterm=bold
  hi Type guifg=CornflowerBlue
  hi Function guifg=NavajoWhite
  hi Structure guifg=green
  hi LineNr guifg=gray50
  hi Ignore guifg=gray40
  hi Todo guifg=OrangeRed guibg=yellow2
  hi Directory guifg=cyan
  hi ErrorMsg guifg=white guibg=red
  hi VisualNOS guifg=NONE guibg=NONE gui=bold,underline ctermfg=NONE ctermbg=NONE cterm=bold,underline
  hi WildMenu guifg=black guibg=yellow
  hi DiffAdd guifg=NONE guibg=DarkBlue
  hi DiffChange guifg=NONE guibg=DarkMagenta
  hi DiffDelete guifg=blue guibg=DarkCyan gui=bold cterm=bold
  hi DiffText guifg=NONE guibg=red gui=bold cterm=bold
  hi Underlined guifg=#80a0ff gui=underline cterm=underline
  hi Error guifg=white guibg=red
  hi SpellErrors guifg=white guibg=red
  unlet s:t_Co
  finish
endif

if s:t_Co >= 16
  hi Normal ctermfg=NONE ctermbg=NONE
  hi Cursor ctermfg=NONE ctermbg=NONE
  hi VertSplit ctermfg=NONE ctermbg=NONE cterm=reverse
  hi Folded ctermfg=Gray ctermbg=DarkGray
  hi FoldColumn ctermfg=4 ctermbg=7
  hi IncSearch ctermfg=Yellow ctermbg=Green cterm=NONE
  hi ModeMsg ctermfg=Brown cterm=NONE
  hi MoreMsg ctermfg=DarkGreen
  hi NonText ctermfg=Blue ctermbg=NONE cterm=bold
  hi Question ctermfg=Green
  hi Search ctermfg=Gray ctermbg=Blue cterm=NONE
  hi SpecialKey ctermfg=DarkGreen
  hi StatusLine ctermfg=NONE ctermbg=NONE cterm=reverse
  hi StatusLineNC ctermfg=NONE ctermbg=NONE cterm=reverse
  hi Title ctermfg=Yellow cterm=bold
  hi Statement ctermfg=LightBlue
  hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse
  hi WarningMsg ctermfg=1
  hi String ctermfg=DarkCyan
  hi Comment ctermfg=11
  hi Constant ctermfg=Brown
  hi Special ctermfg=Brown
  hi Identifier ctermfg=Red
  hi Include ctermfg=Red
  hi PreProc ctermfg=Red ctermbg=NONE
  hi Operator ctermfg=Red
  hi Define ctermfg=Yellow
  hi Type ctermfg=2
  hi Function ctermfg=Brown
  hi Structure ctermfg=Green
  hi LineNr ctermfg=3
  hi Ignore ctermfg=7 cterm=bold
  hi Todo ctermfg=Black ctermbg=Yellow
  hi Directory ctermfg=DarkCyan
  hi ErrorMsg ctermfg=7 ctermbg=1 cterm=bold
  hi VisualNOS ctermfg=NONE ctermbg=NONE cterm=bold,underline
  hi WildMenu ctermfg=0 ctermbg=3
  hi DiffAdd ctermfg=NONE ctermbg=4
  hi DiffChange ctermfg=NONE ctermbg=5
  hi DiffDelete ctermfg=4 ctermbg=6 cterm=bold
  hi DiffText ctermfg=NONE ctermbg=1 cterm=bold
  hi Underlined ctermfg=5 cterm=underline
  hi Error ctermfg=7 ctermbg=1 cterm=bold
  hi SpellErrors ctermfg=7 ctermbg=1 cterm=bold
  unlet s:t_Co
  finish
endif

if s:t_Co >= 2
  hi Normal term=NONE
  hi Comment term=bold
  unlet s:t_Co
  finish
endif

