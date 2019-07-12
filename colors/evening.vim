" Name:         Evening
" Author:       Bram Moolenaar <Bram@vim.org>
" Maintainer:   Bram Moolenaar <Bram@vim.org>
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 12 20:13:02 2019

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'evening'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

" This color scheme uses a dark grey background.

" @suppress ColorColumn
" @suppress Comment
" @suppress Conceal
" @suppress CursorLineNr
" @suppress EndOfBuffer
" @suppress Error
" @suppress Identifier
" @suppress MatchParen
" @suppress Pmenu
" @suppress PmenuSbar
" @suppress PmenuSel
" @suppress PmenuThumb
" @suppress PreProc
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
" @suppress Type
" @suppress Underlined

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['Black', 'DarkRed', 'DarkGreen', 'DarkYellow',
        \ 'DarkBlue', 'DarkMagenta', 'DarkCyan', 'LightGray', 'DarkGray', 'Red',
        \ 'Green', 'Yellow', 'Blue', 'Magenta', 'Cyan', 'White']
  hi Normal guifg=White guibg=gray20
  " Groups used in the 'highlight' and 'guicursor' options default value.
  hi ErrorMsg guifg=White guibg=Red
  hi IncSearch guifg=NONE gui=reverse cterm=reverse
  hi ModeMsg guifg=NONE gui=bold cterm=bold
  hi StatusLine guifg=NONE gui=bold,reverse cterm=bold,reverse
  hi StatusLineNC guifg=NONE gui=reverse cterm=reverse
  hi VertSplit guifg=NONE gui=reverse cterm=reverse
  hi Visual guifg=NONE guibg=gray60
  hi VisualNOS guifg=NONE gui=bold,underline cterm=bold,underline
  hi DiffText guifg=NONE guibg=Red gui=bold cterm=bold
  hi Cursor guifg=Black guibg=Green
  hi lCursor guifg=Black guibg=Cyan
  hi Directory guifg=Cyan
  hi LineNr guifg=Yellow
  hi MoreMsg guifg=SeaGreen gui=bold cterm=bold
  hi NonText guifg=LightBlue guibg=gray30 gui=bold cterm=bold
  hi Question guifg=Green gui=bold cterm=bold
  hi Search guifg=Black guibg=Yellow
  hi SpecialKey guifg=Cyan
  hi Title guifg=Magenta gui=bold cterm=bold
  hi WarningMsg guifg=Red
  hi WildMenu guifg=Black guibg=Yellow
  hi Folded guifg=DarkBlue guibg=LightGray
  hi FoldColumn guifg=DarkBlue guibg=Gray
  hi DiffAdd guifg=NONE guibg=DarkBlue
  hi DiffChange guifg=NONE guibg=DarkMagenta
  hi DiffDelete guifg=Blue guibg=DarkCyan gui=bold cterm=bold
  hi CursorColumn guifg=NONE guibg=gray40
  hi CursorLine guifg=NONE guibg=gray40
  " Groups for syntax highlighting
  hi Constant guifg=#ffa0a0
  hi Special guifg=Orange
  hi Statement guifg=#ffff60 gui=bold cterm=bold
  hi Ignore guifg=gray20
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=White ctermbg=DarkGray
  if !has('patch-8.0.0616') " Fix for Vim bug
    set background=dark
  endif
  " Groups used in the 'highlight' and 'guicursor' options default value.
  hi ErrorMsg ctermfg=White ctermbg=DarkRed
  hi IncSearch ctermfg=NONE cterm=reverse
  hi ModeMsg ctermfg=NONE cterm=bold
  hi StatusLine ctermfg=NONE cterm=bold,reverse
  hi StatusLineNC ctermfg=NONE cterm=reverse
  hi VertSplit ctermfg=NONE cterm=reverse
  hi Visual ctermfg=NONE ctermbg=Black
  hi VisualNOS ctermfg=NONE cterm=bold,underline
  hi DiffText ctermfg=NONE ctermbg=Red cterm=bold
  hi Cursor ctermfg=Black ctermbg=Green
  hi lCursor ctermfg=Black ctermbg=Cyan
  hi Directory ctermfg=LightCyan
  hi LineNr ctermfg=Yellow
  hi MoreMsg ctermfg=LightGreen
  hi NonText ctermfg=LightBlue ctermbg=NONE
  hi Question ctermfg=LightGreen
  hi Search ctermfg=Black ctermbg=Yellow
  hi SpecialKey ctermfg=LightBlue
  hi Title ctermfg=LightMagenta
  hi WarningMsg ctermfg=LightRed
  hi WildMenu ctermfg=Black ctermbg=Yellow
  hi Folded ctermfg=DarkBlue ctermbg=LightGray
  hi FoldColumn ctermfg=DarkBlue ctermbg=LightGray
  hi DiffAdd ctermfg=NONE ctermbg=DarkBlue
  hi DiffChange ctermfg=NONE ctermbg=DarkMagenta
  hi DiffDelete ctermfg=Blue ctermbg=DarkCyan
  hi CursorColumn ctermfg=NONE ctermbg=Black
  hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
  " Groups for syntax highlighting
  hi Constant ctermfg=Magenta
  hi Special ctermfg=LightRed
  hi Statement ctermfg=Yellow cterm=bold
  hi Ignore ctermfg=DarkGray
  unlet s:t_Co
  finish
endif

if s:t_Co >= 2
  hi Normal term=NONE
  hi ErrorMsg term=standout
  hi IncSearch term=reverse
  hi ModeMsg term=bold
  hi StatusLine term=bold,reverse
  hi StatusLineNC term=reverse
  hi VertSplit term=reverse
  hi Visual term=reverse
  hi VisualNOS term=bold,underline
  hi DiffText term=reverse
  hi Directory term=bold
  hi LineNr term=underline
  hi MoreMsg term=bold
  hi NonText term=bold
  hi Question term=standout
  hi Search term=reverse
  hi SpecialKey term=bold
  hi Title term=bold
  hi WarningMsg term=standout
  hi WildMenu term=standout
  hi Folded term=standout
  hi FoldColumn term=standout
  hi DiffAdd term=bold
  hi DiffChange term=bold
  hi DiffDelete term=bold
  hi CursorColumn term=reverse
  hi CursorLine term=underline
  " Groups for syntax highlighting
  hi Constant term=underline
  hi Special term=bold
  hi Statement term=bold
  unlet s:t_Co
  finish
endif

