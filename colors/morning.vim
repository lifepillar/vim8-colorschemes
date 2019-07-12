" Name:         Morning
" Author:       Bram Moolenaar <Bram@vim.org>
" Maintainer:   Bram Moolenaar <Bram@vim.org>
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 12 20:13:02 2019

set background=light

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'morning'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

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
  hi Normal guifg=Black guibg=gray90
  hi ErrorMsg guifg=White guibg=Red
  hi IncSearch guifg=NONE gui=reverse cterm=reverse
  hi ModeMsg guifg=NONE gui=bold cterm=bold
  hi StatusLine guifg=NONE gui=bold,reverse cterm=bold,reverse
  hi StatusLineNC guifg=NONE gui=reverse cterm=reverse
  hi VertSplit guifg=NONE gui=reverse cterm=reverse
  hi Visual guifg=NONE guibg=gray80
  hi VisualNOS guifg=NONE gui=bold,underline cterm=bold,underline
  hi DiffText guifg=NONE guibg=Red gui=bold cterm=bold
  hi Cursor guifg=NONE guibg=Green
  hi lCursor guifg=NONE guibg=Cyan
  hi Directory guifg=Blue
  hi LineNr guifg=Brown
  hi MoreMsg guifg=SeaGreen gui=bold cterm=bold
  hi NonText guifg=Blue guibg=gray80 gui=bold cterm=bold
  hi Question guifg=SeaGreen gui=bold cterm=bold
  hi Search guifg=NONE guibg=Yellow
  hi SpecialKey guifg=Blue
  hi Title guifg=Magenta gui=bold cterm=bold
  hi WarningMsg guifg=Red
  hi WildMenu guifg=Black guibg=Yellow
  hi Folded guifg=DarkBlue guibg=LightGray
  hi FoldColumn guifg=DarkBlue guibg=Gray
  hi DiffAdd guifg=NONE guibg=LightBlue
  hi DiffChange guifg=NONE guibg=LightMagenta
  hi DiffDelete guifg=Blue guibg=LightCyan gui=bold cterm=bold
  hi CursorLine guifg=NONE guibg=gray80
  hi CursorColumn guifg=NONE guibg=gray80
  " Colors for syntax highlighting
  hi Constant guifg=Magenta guibg=gray95
  hi Special guifg=SlateBlue guibg=gray95
  hi Statement guifg=Brown gui=bold cterm=bold
  hi Ignore guifg=gray90
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=Black ctermbg=LightGray
  hi ErrorMsg ctermfg=White ctermbg=DarkRed
  hi IncSearch ctermfg=NONE cterm=reverse
  hi ModeMsg ctermfg=NONE cterm=bold
  hi StatusLine ctermfg=NONE cterm=bold,reverse
  hi StatusLineNC ctermfg=NONE cterm=reverse
  hi VertSplit ctermfg=NONE cterm=reverse
  hi Visual ctermfg=NONE ctermbg=Gray
  hi VisualNOS ctermfg=NONE cterm=bold,underline
  hi DiffText ctermfg=NONE ctermbg=Red cterm=bold
  hi Cursor ctermfg=NONE ctermbg=Green
  hi lCursor ctermfg=NONE ctermbg=Cyan
  hi Directory ctermfg=DarkBlue
  hi LineNr ctermfg=Brown
  hi MoreMsg ctermfg=DarkGreen
  hi NonText ctermfg=Blue ctermbg=NONE
  hi Question ctermfg=DarkGreen
  hi Search ctermfg=NONE ctermbg=Yellow
  hi SpecialKey ctermfg=DarkBlue
  hi Title ctermfg=DarkMagenta
  hi WarningMsg ctermfg=DarkRed
  hi WildMenu ctermfg=Black ctermbg=Yellow
  hi Folded ctermfg=DarkBlue ctermbg=Gray
  hi FoldColumn ctermfg=DarkBlue ctermbg=Gray
  hi DiffAdd ctermfg=NONE ctermbg=LightBlue
  hi DiffChange ctermfg=NONE ctermbg=LightMagenta
  hi DiffDelete ctermfg=Blue ctermbg=LightCyan
  hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
  hi CursorColumn ctermfg=NONE ctermbg=Gray
  " Colors for syntax highlighting
  hi Constant ctermfg=DarkRed ctermbg=NONE
  hi Special ctermfg=DarkMagenta ctermbg=NONE
  hi Statement ctermfg=Brown cterm=bold
  hi Ignore ctermfg=LightGray
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
  " Colors for syntax highlighting
  hi Constant term=underline
  hi Special term=bold
  hi Statement term=bold
  unlet s:t_Co
  finish
endif

