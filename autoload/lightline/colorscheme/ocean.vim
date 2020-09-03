let s:c00 = ["#2b303b", 23]
let s:c01 = ["#343d46", 59]
let s:c02 = ["#4f5b66", 59]
let s:c03 = ["#65737e", 60]
let s:c04 = ["#a7adba", 145]
let s:c05 = ["#c0c5ce", 152]
let s:c06 = ["#dfe1e8", 188]
let s:c07 = ["#eff1f5", 15]
let s:c08 = ["#bf616a", 131]
let s:c09 = ["#d08770", 173]
let s:c0A = ["#ebcb8b", 186]
let s:c0B = ["#a3be8c", 144]
let s:c0C = ["#96b5b4", 109]
let s:c0D = ["#8fa1b3", 199]
let s:c0E = ["#b48ead", 139]
let s:c0F = ["#ab7967", 137]

" Common colors
let s:blue   = s:c0D
let s:green  = s:c0B
let s:purple = s:c0E
let s:red1   = s:c08
let s:red2   = s:c09
let s:yellow = s:c0A

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

if lightline#colorscheme#background() ==# 'light'
  " Light variant
  let s:fg    = s:c00
  let s:bg    = s:c07
  let s:gray1 = s:c00
  let s:gray2 = s:c06
  let s:gray3 = s:c04
  let s:green = s:c0B

  let s:p.inactive.left   = [ [ s:bg,  s:gray3 ], [ s:bg, s:gray3 ] ]
  let s:p.inactive.middle = [ [ s:gray3, s:gray2 ] ]
  let s:p.inactive.right  = [ [ s:bg, s:gray3 ] ]
else
  " Dark variant
  let s:fg    = s:c04
  let s:bg    = s:c00
  let s:gray1 = s:c02
  let s:gray2 = s:c00
  let s:gray3 = s:c01

  let s:p.inactive.left   = [ [ s:gray1,  s:bg ], [ s:gray1, s:bg ] ]
  let s:p.inactive.middle = [ [ s:gray1, s:gray2 ] ]
  let s:p.inactive.right  = [ [ s:gray1, s:bg ] ]
endif

" Common
let s:p.normal.left    = [ [ s:bg, s:green, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.normal.middle  = [ [ s:fg, s:gray2 ] ]
let s:p.normal.right   = [ [ s:bg, s:green, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.normal.error   = [ [ s:red2, s:bg ] ]
let s:p.normal.warning = [ [ s:yellow, s:bg ] ]
let s:p.insert.right   = [ [ s:bg, s:green, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.insert.left    = [ [ s:bg, s:blue, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.replace.right  = [ [ s:bg, s:green, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.replace.left   = [ [ s:bg, s:red1, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.visual.right   = [ [ s:bg, s:green, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.visual.left    = [ [ s:bg, s:purple, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.tabline.left   = [ [ s:fg, s:gray2 ] ]
let s:p.tabline.tabsel = [ [ s:fg, s:gray3 ] ]
let s:p.tabline.middle = [ [ s:gray3, s:gray2 ] ]
let s:p.tabline.right  = copy(s:p.normal.right)

let g:lightline#colorscheme#ocean#palette = lightline#colorscheme#flatten(s:p)
