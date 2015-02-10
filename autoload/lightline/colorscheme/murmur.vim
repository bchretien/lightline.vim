" =============================================================================
" Filename: autoload/lightline/colorscheme/murmur.vim
" Version: 0.0
" Author: bchretien
" License: MIT License
" Last Change: 2015/02/10 21:44:21.
" =============================================================================

" Color palette
let s:termbg      = ['#3a3a3a', 237] " Background for branch and file format blocks
let s:termfg      = ['#afaf87', 144] " Foreground for branch and file format blocks

let s:termbg2     = ['#1c1c1c', 234] " Background for middle block
let s:termfg2     = ['#f5f5f5', 230] " Foreground for middle block

let s:normalbg    = ['#005fff', 27] " Background for normal mode and file position blocks
let s:normalfg    = ['#ffffff', 15] " Foreground for normal mode and file position blocks

let s:insertbg    = ['#5f8700', 64] " Background for insert mode and file position blocks
let s:insertfg    = ['#ffffff', 15] " Foreground for insert mode and file position blocks

let s:visualbg    = ['#d75f00', 166] " Background for visual mode and file position blocks
let s:visualfg    = ['#ffffff', 15] " Foreground for visual mode and file position blocks

let s:replacebg   = ['#870000', 88] " Background for replace mode and file position blocks
let s:replacefg   = ['#ffffff', 15] " Foreground for replace mode and file position blocks

let s:alert       = ['#870000', 88] " Modified file alert color

let s:inactivebg  = ['#242424', 235] " Background for inactive mode
let s:inactivefg  = ['#4e4e4e', 239] " Foreground for inactive mode
let s:inactivebg2 = ['#353535', 236] " Background for inactive mode
let s:inactivefg2 = ['#666666', 242] " Foreground for inactive mode

let s:tablineleftbg   = ['#242424', 235] " Background for left tabs
let s:tablineleftfg   = s:termfg         " Foreground for left tabs
let s:tablineselbg    = s:termbg         " Background for selected tab
let s:tablineselfg    = s:termfg         " Foreground for selected tab
let s:tablinemiddlebg = s:termbg2        " Background for middle block
let s:tablinemiddlefg = s:termfg2        " Foreground for middle block
let s:tablinerightbg  = ['#242424', 235] " Background for right tabs
let s:tablinerightfg  = s:termfg         " Foreground for right tabs

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ s:normalfg, s:normalbg, 'bold' ], [ s:termfg, s:termbg ] ]
let s:p.normal.middle = [ [ s:normalbg, s:termbg2 ] ]
let s:p.normal.right = copy(s:p.normal.left)
let s:p.normal.error = [ [ 'gray9', 'brightestred' ] ]
let s:p.normal.warning = [ [ 'gray1', 'yellow' ] ]

let s:p.insert.left = [ [ s:insertfg, s:insertbg, 'bold' ], [ s:termfg, s:termbg ] ]
let s:p.insert.middle = [ [ s:insertbg, s:termbg2 ] ]
let s:p.insert.right = copy(s:p.insert.left)

let s:p.visual.left = [ [ s:visualfg, s:visualbg, 'bold' ], [ s:termfg, s:termbg ] ]
let s:p.visual.middle = [ [ s:visualbg, s:termbg2 ] ]
let s:p.visual.right = copy(s:p.visual.left)

let s:p.replace.left = [ [ s:replacefg, s:replacebg, 'bold' ], [ s:termfg, s:termbg ] ]
let s:p.replace.middle = [ [ s:termfg, s:termbg2 ] ]
let s:p.replace.right = copy(s:p.replace.left)

let s:p.inactive.left = [ [ s:inactivefg, s:inactivebg], [ s:inactivefg2, s:inactivebg2 ] ]
let s:p.inactive.right = copy(s:p.inactive.left)

let s:p.tabline.left = [ [ s:tablineleftfg, s:tablineleftbg ] ]
let s:p.tabline.tabsel = [ [ s:tablineselfg, s:tablineselbg, 'bold' ] ]
let s:p.tabline.middle = [ [ s:tablinemiddlefg, s:tablinemiddlebg ] ]
let s:p.tabline.right = [ [ s:tablinerightfg, s:tablinerightbg ] ]

let g:lightline#colorscheme#murmur#palette = lightline#colorscheme#flatten(s:p)
