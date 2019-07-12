" Name:         Darkblue
" Description:  darkblue -- for those who prefer dark background
" Author:       Bohdan Vlasyuk <bohdan@vstu.edu.ua>
" Maintainer:   Bohdan Vlasyuk <bohdan@vstu.edu.ua>
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 12 20:12:59 2019

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'darkblue'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

" [note: looks bit uglier with come terminal palettes,
" but is fine on default linux console palette.]

" @suppress ColorColumn
" @suppress Conceal
" @suppress CursorColumn
" @suppress CursorLine
" @suppress CursorLineNr
" @suppress EndOfBuffer
" @suppress Error
" @suppress MatchParen
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
  hi Normal guifg=#c0c0c0 guibg=#000040
  hi ErrorMsg guifg=#ffffff guibg=#287eff
  hi Visual guifg=#8080ff guibg=fg gui=reverse cterm=reverse
  hi VisualNOS guifg=#8080ff guibg=fg gui=reverse,underline cterm=reverse,underline
  hi Todo guifg=#d14a14 guibg=#1249d1
  hi Search guifg=#90fff0 guibg=#2050d0
  hi IncSearch guifg=#b0ffff guibg=#2050d0
  hi SpecialKey guifg=Cyan
  hi Directory guifg=Cyan
  hi Title guifg=Magenta gui=NONE cterm=NONE
  hi WarningMsg guifg=Red
  hi WildMenu guifg=Yellow guibg=Black gui=NONE cterm=NONE
  hi ModeMsg guifg=#22cce2
  hi MoreMsg guifg=SeaGreen
  hi Question guifg=Green gui=NONE cterm=NONE
  hi NonText guifg=#0030ff
  hi StatusLine guifg=Blue guibg=DarkGray gui=NONE cterm=NONE
  hi StatusLineNC guifg=Black guibg=DarkGray gui=NONE cterm=NONE
  hi VertSplit guifg=Black guibg=DarkGray gui=NONE cterm=NONE
  hi Folded guifg=#808080 guibg=#000040
  hi FoldColumn guifg=#808080 guibg=#000040
  hi LineNr guifg=#90f020 gui=NONE cterm=NONE
  hi DiffAdd guifg=NONE guibg=DarkBlue gui=NONE cterm=NONE
  hi DiffChange guifg=NONE guibg=DarkMagenta gui=NONE cterm=NONE
  hi DiffDelete guifg=Blue guibg=DarkCyan gui=bold cterm=bold
  hi DiffText guifg=NONE guibg=Red gui=bold cterm=bold
  hi Cursor guifg=Black guibg=Yellow
  hi lCursor guifg=Black guibg=White
  hi Comment guifg=#80a0ff
  hi Constant guifg=#ffa0a0 gui=NONE cterm=NONE
  hi Special guifg=Orange gui=NONE cterm=NONE
  hi Identifier guifg=#40ffff gui=NONE cterm=NONE
  hi Statement guifg=#ffff60 gui=NONE cterm=NONE
  hi PreProc guifg=#ff80ff gui=NONE cterm=NONE
  hi Type guifg=#60ff60 gui=NONE cterm=NONE
  hi Underlined guifg=#80a0ff gui=NONE cterm=NONE
  hi Ignore guifg=bg
  " suggested by tigmoid, 2008 Jul 18
  hi Pmenu guifg=#c0c0c0 guibg=#404080
  hi PmenuSel guifg=#c0c0c0 guibg=#2050d0
  hi PmenuSbar guifg=Blue guibg=DarkGray
  hi PmenuThumb guifg=#c0c0c0
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=Gray ctermbg=Black
  hi ErrorMsg ctermfg=White ctermbg=LightBlue
  hi Visual ctermfg=LightBlue ctermbg=fg cterm=reverse
  hi VisualNOS ctermfg=LightBlue ctermbg=fg cterm=reverse,underline
  hi Todo ctermfg=Red ctermbg=DarkBlue
  hi Search ctermfg=White ctermbg=DarkBlue cterm=underline
  hi IncSearch ctermfg=DarkBlue ctermbg=Gray
  hi SpecialKey ctermfg=DarkCyan
  hi Directory ctermfg=Cyan
  hi Title ctermfg=Magenta cterm=bold
  hi WarningMsg ctermfg=Red
  hi WildMenu ctermfg=Yellow ctermbg=Black cterm=NONE
  hi ModeMsg ctermfg=LightBlue
  hi MoreMsg ctermfg=DarkGreen
  hi Question ctermfg=Green cterm=NONE
  hi NonText ctermfg=DarkBlue
  hi StatusLine ctermfg=Blue ctermbg=Gray cterm=NONE
  hi StatusLineNC ctermfg=Black ctermbg=Gray cterm=NONE
  hi VertSplit ctermfg=Black ctermbg=Gray cterm=NONE
  hi Folded ctermfg=DarkGray ctermbg=Black cterm=bold
  hi FoldColumn ctermfg=DarkGray ctermbg=Black cterm=bold
  hi LineNr ctermfg=Green cterm=NONE
  hi DiffAdd ctermfg=NONE ctermbg=DarkBlue cterm=NONE
  hi DiffChange ctermfg=NONE ctermbg=Magenta cterm=NONE
  hi DiffDelete ctermfg=Blue ctermbg=Cyan
  hi DiffText ctermfg=NONE ctermbg=Red cterm=bold
  hi Cursor ctermfg=Black ctermbg=Yellow
  hi lCursor ctermfg=Black ctermbg=White
  hi Comment ctermfg=DarkRed
  hi Constant ctermfg=Magenta cterm=NONE
  hi Special ctermfg=Brown cterm=NONE
  hi Identifier ctermfg=Cyan cterm=NONE
  hi Statement ctermfg=Yellow cterm=NONE
  hi PreProc ctermfg=Magenta cterm=NONE
  hi Type ctermfg=Green cterm=NONE
  hi Underlined ctermfg=LightBlue cterm=underline
  hi Ignore ctermfg=bg
  hi Pmenu ctermfg=Black ctermbg=Magenta
  hi PmenuSel ctermfg=DarkGray ctermbg=Black
  hi PmenuSbar ctermfg=NONE ctermbg=Gray
  hi PmenuThumb ctermfg=NONE
  unlet s:t_Co
  finish
endif

if s:t_Co >= 2
  hi Normal term=NONE
  hi DiffAdd term=NONE
  hi FoldColumn term=bold
  hi Folded term=bold
  hi Search term=underline
  hi StatusLine term=NONE
  hi StatusLineNC term=NONE
  hi Underlined term=underline
  hi VertSplit term=NONE
  hi WildMenu term=NONE
  unlet s:t_Co
  finish
endif

