" Name:         Shine
" Author:       Yasuhiro Matsumoto <mattn@mail.goo.ne.jp>
" Maintainer:   Yasuhiro Matsumoto <mattn@mail.goo.ne.jp>
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 12 20:13:05 2019

set background=light

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'shine'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

" This look like normal text editor.
" This color scheme uses a light background.

" @suppress ColorColumn
" @suppress Conceal
" @suppress CursorColumn
" @suppress CursorLine
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
  hi Normal guifg=Black guibg=White
  hi ErrorMsg guifg=White guibg=Red
  hi IncSearch guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi ModeMsg guifg=NONE guibg=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
  hi StatusLine guifg=NONE guibg=NONE gui=bold,reverse ctermfg=NONE ctermbg=NONE cterm=bold,reverse
  hi StatusLineNC guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi VertSplit guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi Visual guifg=Gray guibg=fg gui=reverse cterm=reverse
  hi VisualNOS guifg=NONE guibg=NONE gui=bold,underline ctermfg=NONE ctermbg=NONE cterm=bold,underline
  hi DiffText guifg=NONE guibg=Red gui=bold cterm=bold
  hi Cursor guifg=Black guibg=Green
  hi lCursor guifg=Black guibg=Cyan
  hi Directory guifg=Red
  hi LineNr guifg=Yellow
  hi MoreMsg guifg=SeaGreen gui=bold cterm=bold
  hi NonText guifg=LightBlue guibg=gray90 gui=bold cterm=bold
  hi Question guifg=Green gui=bold cterm=bold
  hi Search guifg=Black guibg=Yellow
  hi SpecialKey guifg=Blue
  hi Title guifg=Magenta gui=bold cterm=bold
  hi WarningMsg guifg=Red
  hi WildMenu guifg=Black guibg=Yellow
  hi Folded guifg=DarkBlue guibg=LightGray
  hi FoldColumn guifg=DarkBlue guibg=Gray
  hi DiffAdd guifg=NONE guibg=DarkBlue
  hi DiffChange guifg=NONE guibg=DarkMagenta
  hi DiffDelete guifg=Blue guibg=DarkCyan gui=bold cterm=bold
  hi Comment guifg=DarkGray guibg=NONE gui=bold cterm=bold
  hi SpecialChar guifg=DarkGray guibg=NONE gui=bold cterm=bold
  hi StorageClass guifg=Red guibg=NONE gui=bold cterm=bold
  hi Number guifg=LightRed guibg=NONE gui=bold cterm=bold
  hi Constant guifg=#a07070 guibg=gray80
  hi Special guifg=DarkOrange guibg=gray80
  hi Statement guifg=#ffff60 guibg=NONE gui=bold cterm=bold
  hi Ignore guifg=gray90 guibg=NONE
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=Black ctermbg=White
  hi ErrorMsg ctermfg=White ctermbg=DarkRed
  hi IncSearch ctermfg=NONE ctermbg=NONE cterm=reverse
  hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
  hi StatusLine ctermfg=NONE ctermbg=NONE cterm=bold,reverse
  hi StatusLineNC ctermfg=NONE ctermbg=NONE cterm=reverse
  hi VertSplit ctermfg=NONE ctermbg=NONE cterm=reverse
  hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse
  hi VisualNOS ctermfg=NONE ctermbg=NONE cterm=bold,underline
  hi DiffText ctermfg=NONE ctermbg=Red cterm=bold
  hi Cursor ctermfg=Black ctermbg=Green
  hi lCursor ctermfg=Black ctermbg=Cyan
  hi Directory ctermfg=LightRed
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
  hi Comment ctermfg=DarkGray ctermbg=White
  hi SpecialChar ctermfg=DarkGray ctermbg=White
  hi StorageClass ctermfg=Red ctermbg=White
  hi Number ctermfg=LightRed ctermbg=White
  hi Constant ctermfg=Magenta ctermbg=NONE
  hi Special ctermfg=LightRed ctermbg=NONE
  hi Statement ctermfg=DarkGreen ctermbg=White cterm=bold
  hi Ignore ctermfg=LightGray ctermbg=NONE
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
  hi Comment term=NONE
  hi SpecialChar term=NONE
  hi StorageClass term=NONE
  hi Number term=NONE
  hi Constant term=underline
  hi Special term=bold
  hi Statement term=bold
  hi Ignore term=NONE
  unlet s:t_Co
  finish
endif

