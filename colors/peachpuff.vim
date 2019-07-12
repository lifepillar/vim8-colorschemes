" Name:         Peachpuff
" Author:       David Ne\v{c}as (Yeti) <yeti@physics.muni.cz>
" Maintainer:   David Ne\v{c}as (Yeti) <yeti@physics.muni.cz>
" URL:          http://trific.ath.cx/Ftp/vim/colors/peachpuff.vim
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 12 20:13:04 2019

set background=light

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'peachpuff'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

" This color scheme uses a peachpuff background (what you've expected when it's
" called peachpuff?).
"
" Note: Only GUI colors differ from default, on terminal it's just `light'.

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
" @suppress Underlined

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['Black', 'DarkRed', 'DarkGreen', 'DarkYellow',
        \ 'DarkBlue', 'DarkMagenta', 'DarkCyan', 'LightGray', 'DarkGray', 'Red',
        \ 'Green', 'Yellow', 'Blue', 'Magenta', 'Cyan', 'White']
  hi Normal guifg=Black guibg=PeachPuff
  hi SpecialKey guifg=Blue
  hi NonText guifg=Blue gui=bold cterm=bold
  hi Directory guifg=Blue
  hi ErrorMsg guifg=White guibg=Red gui=bold cterm=bold
  hi IncSearch guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi Search guifg=NONE guibg=gold2
  hi MoreMsg guifg=SeaGreen gui=bold cterm=bold
  hi ModeMsg guifg=NONE guibg=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
  hi LineNr guifg=red3
  hi Question guifg=SeaGreen gui=bold cterm=bold
  hi StatusLine guifg=White guibg=Black gui=bold cterm=bold
  hi StatusLineNC guifg=PeachPuff guibg=gray45 gui=bold cterm=bold
  hi VertSplit guifg=White guibg=gray45 gui=bold cterm=bold
  hi Title guifg=DeepPink3 gui=bold cterm=bold
  hi Visual guifg=gray80 guibg=fg gui=reverse cterm=reverse
  hi VisualNOS guifg=NONE gui=bold,underline cterm=bold,underline
  hi WarningMsg guifg=Red gui=bold cterm=bold
  hi WildMenu guifg=Black guibg=Yellow
  hi Folded guifg=Black guibg=#e3c1a5
  hi FoldColumn guifg=DarkBlue guibg=gray80
  hi DiffAdd guifg=NONE guibg=White
  hi DiffChange guifg=NONE guibg=#edb5cd
  hi DiffDelete guifg=LightBlue guibg=#f6e8d0 gui=bold cterm=bold
  hi DiffText guifg=NONE guibg=#ff8060 gui=bold cterm=bold
  hi Cursor guifg=bg guibg=fg
  hi lCursor guifg=bg guibg=fg
  " Colors for syntax highlighting
  hi Comment guifg=#406090
  hi Constant guifg=#c00058
  hi Special guifg=SlateBlue
  hi Identifier guifg=DarkCyan
  hi Statement guifg=Brown
  hi PreProc guifg=magenta3
  hi Type guifg=SeaGreen gui=bold cterm=bold
  hi Ignore guifg=bg
  hi Error guifg=White guibg=Red gui=bold cterm=bold
  hi Todo guifg=Blue guibg=Yellow
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=NONE ctermbg=NONE
  hi SpecialKey ctermfg=4
  hi NonText ctermfg=4 cterm=bold
  hi Directory ctermfg=4
  hi ErrorMsg ctermfg=7 ctermbg=1 cterm=bold
  hi IncSearch ctermfg=NONE ctermbg=NONE cterm=reverse
  hi Search ctermfg=NONE ctermbg=3
  hi MoreMsg ctermfg=2
  hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
  hi LineNr ctermfg=3
  hi Question ctermfg=2
  hi StatusLine ctermfg=NONE ctermbg=NONE cterm=bold,reverse
  hi StatusLineNC ctermfg=NONE ctermbg=NONE cterm=reverse
  hi VertSplit ctermfg=NONE ctermbg=NONE cterm=reverse
  hi Title ctermfg=5
  hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse
  hi VisualNOS ctermfg=NONE cterm=bold,underline
  hi WarningMsg ctermfg=1
  hi WildMenu ctermfg=0 ctermbg=3
  hi Folded ctermfg=4 ctermbg=7
  hi FoldColumn ctermfg=4 ctermbg=7
  hi DiffAdd ctermfg=NONE ctermbg=4
  hi DiffChange ctermfg=NONE ctermbg=5
  hi DiffDelete ctermfg=4 ctermbg=6 cterm=bold
  hi DiffText ctermfg=NONE ctermbg=1 cterm=bold
  hi Cursor ctermfg=bg ctermbg=fg
  hi lCursor ctermfg=bg ctermbg=fg
  " Colors for syntax highlighting
  hi Comment ctermfg=4
  hi Constant ctermfg=1
  hi Special ctermfg=5
  hi Identifier ctermfg=6
  hi Statement ctermfg=3
  hi PreProc ctermfg=5
  hi Type ctermfg=2
  hi Ignore ctermfg=7 cterm=bold
  hi Error ctermfg=7 ctermbg=1 cterm=bold
  hi Todo ctermfg=0 ctermbg=3
  unlet s:t_Co
  finish
endif

if s:t_Co >= 2
  hi Normal term=NONE
  hi SpecialKey term=bold
  hi NonText term=bold
  hi Directory term=bold
  hi ErrorMsg term=standout
  hi IncSearch term=reverse
  hi Search term=reverse
  hi MoreMsg term=bold
  hi ModeMsg term=bold
  hi LineNr term=underline
  hi Question term=standout
  hi StatusLine term=bold,reverse
  hi StatusLineNC term=reverse
  hi VertSplit term=reverse
  hi Title term=bold
  hi Visual term=reverse
  hi VisualNOS term=bold,underline
  hi WarningMsg term=standout
  hi WildMenu term=standout
  hi Folded term=standout
  hi FoldColumn term=standout
  hi DiffAdd term=bold
  hi DiffChange term=bold
  hi DiffDelete term=bold
  hi DiffText term=reverse
  hi Comment term=bold
  hi Constant term=underline
  hi Special term=bold
  hi Identifier term=underline
  hi Statement term=bold
  hi PreProc term=underline
  hi Type term=underline
  hi Ignore term=bold
  hi Error term=reverse
  hi Todo term=standout
  unlet s:t_Co
  finish
endif

