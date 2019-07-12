" Name:         Delek
" Author:       David Schweikert <david@schweikert.ch>
" Maintainer:   David Schweikert <david@schweikert.ch>
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 12 20:12:59 2019

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'delek'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

" @suppress ColorColumn
" @suppress Conceal
" @suppress CursorColumn
" @suppress CursorLine
" @suppress CursorLineNr
" @suppress EndOfBuffer
" @suppress Error
" @suppress Ignore
" @suppress MatchParen
" @suppress PmenuSbar
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
" @suppress Todo
" @suppress ToolbarButton
" @suppress ToolbarLine
" @suppress Underlined

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['Black', 'DarkRed', 'DarkGreen', 'DarkYellow',
        \ 'DarkBlue', 'DarkMagenta', 'DarkCyan', 'LightGray', 'DarkGray', 'Red',
        \ 'Green', 'Yellow', 'Blue', 'Magenta', 'Cyan', 'White']
  hi Normal guifg=Black guibg=White
  hi lCursor guifg=NONE guibg=Cyan
  hi Cursor guifg=bg guibg=fg
  hi DiffAdd guifg=NONE guibg=LightBlue
  hi DiffChange guifg=NONE guibg=LightMagenta
  hi DiffDelete guifg=Blue guibg=LightCyan gui=bold cterm=bold
  hi DiffText guifg=NONE guibg=Red gui=bold cterm=bold
  hi Directory guifg=Blue
  hi ErrorMsg guifg=White guibg=Red
  hi FoldColumn guifg=DarkBlue guibg=Gray
  hi Folded guifg=DarkBlue guibg=LightGray
  hi IncSearch guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi LineNr guifg=Brown
  hi ModeMsg guifg=NONE guibg=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
  hi MoreMsg guifg=SeaGreen gui=bold cterm=bold
  hi NonText guifg=Gray guibg=White gui=bold cterm=bold
  hi Pmenu guifg=NONE guibg=LightBlue
  hi PmenuSel guifg=White guibg=DarkBlue
  hi Question guifg=SeaGreen gui=bold cterm=bold
  hi SpecialKey guifg=Blue
  hi StatusLine guifg=Blue guibg=gold
  hi StatusLineNC guifg=Blue guibg=gold
  hi Title guifg=Magenta gui=bold cterm=bold
  hi VertSplit guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi Visual guifg=Gray guibg=fg gui=reverse cterm=reverse
  hi VisualNOS guifg=NONE guibg=NONE gui=bold,underline ctermfg=NONE ctermbg=NONE cterm=bold,underline
  hi WarningMsg guifg=Red
  hi WildMenu guifg=Black guibg=Yellow
  " syntax highlighting
  hi Comment guifg=red2 gui=NONE cterm=NONE
  hi Constant guifg=green3 gui=NONE cterm=NONE
  hi Identifier guifg=cyan4 gui=NONE cterm=NONE
  hi PreProc guifg=magenta3 gui=NONE cterm=NONE
  hi Special guifg=DeepPink gui=NONE cterm=NONE
  hi Statement guifg=Blue gui=bold cterm=bold
  hi Type guifg=Blue gui=bold cterm=bold
  if &background ==# 'dark'
    hi Search guifg=Black guibg=Yellow
    unlet s:t_Co
    finish
  endif
  " Light background
  hi Search guifg=NONE guibg=Yellow
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  " Note: we never set 'term' because the defaults for B&W terminals are OK
  hi Normal ctermfg=NONE ctermbg=NONE
  hi Cursor ctermfg=bg ctermbg=fg
  hi DiffAdd ctermfg=NONE ctermbg=LightBlue
  hi DiffChange ctermfg=NONE ctermbg=LightMagenta
  hi DiffDelete ctermfg=Blue ctermbg=LightCyan
  hi DiffText ctermfg=NONE ctermbg=Red cterm=bold
  hi Directory ctermfg=DarkBlue
  hi ErrorMsg ctermfg=White ctermbg=DarkRed
  hi FoldColumn ctermfg=DarkBlue ctermbg=Gray
  hi Folded ctermfg=DarkBlue ctermbg=Gray
  hi IncSearch ctermfg=NONE ctermbg=NONE cterm=reverse
  hi LineNr ctermfg=Brown
  hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
  hi MoreMsg ctermfg=DarkGreen
  hi NonText ctermfg=Blue ctermbg=NONE
  hi PmenuSel ctermfg=White ctermbg=DarkBlue
  hi Question ctermfg=DarkGreen
  hi SpecialKey ctermfg=DarkBlue
  hi StatusLine ctermfg=Yellow ctermbg=Blue cterm=bold
  hi StatusLineNC ctermfg=Black ctermbg=Blue cterm=bold
  hi Title ctermfg=DarkMagenta
  hi VertSplit ctermfg=NONE ctermbg=NONE cterm=reverse
  hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse
  hi VisualNOS ctermfg=NONE ctermbg=NONE cterm=bold,underline
  hi WarningMsg ctermfg=DarkRed
  hi WildMenu ctermfg=Black ctermbg=Yellow
  " syntax highlighting
  hi Comment ctermfg=DarkRed cterm=NONE
  hi Constant ctermfg=DarkGreen cterm=NONE
  hi Identifier ctermfg=DarkCyan cterm=NONE
  hi PreProc ctermfg=DarkMagenta cterm=NONE
  hi Special ctermfg=LightRed cterm=NONE
  hi Statement ctermfg=Blue cterm=bold
  hi Type ctermfg=Blue cterm=NONE
  if &background ==# 'dark'
    hi Pmenu ctermfg=Black ctermbg=Magenta
    hi Search ctermfg=Black ctermbg=Yellow
    unlet s:t_Co
    finish
  endif
  " Light background
  hi Pmenu ctermfg=Black ctermbg=LightMagenta
  hi Search ctermfg=NONE ctermbg=Yellow
  unlet s:t_Co
  finish
endif

