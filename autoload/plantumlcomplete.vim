" Vim syntax file
" Language: PlantUml diagrams definition language
" Maintainer: Valeriy Kireev
" Latest Revision: 17 May 2019

let s:matches=[
      \ "activate",
      \ "actor",
      \ "alt",
      \ "artifact",
      \ "as",
      \ "autonumber",
      \ "boundary",
      \ "card",
      \ "cloud",
      \ "collections",
      \ "component",
      \ "control",
      \ "database",
      \ "deactivate",
      \ "destroy",
      \ "else",
      \ "else",
      \ "elseif",
      \ "end",
      \ "endif",
      \ "@endum",
      \ "endwhile",
      \ "entity",
      \ "false",
      \ "file",
      \ "folder",
      \ "frame",
      \ "if",
      \ "interface",
      \ "is",
      \ "loop",
      \ "node",
      \ "package",
      \ "participant",
      \ "queue",
      \ "rectangle",
      \ "repeat",
      \ "skinparam",
      \ "start",
      \ "@startum",
      \ "stop",
      \ "storage",
      \ "then",
      \ "title",
      \ "together",
      \ "true",
      \ "usecase",
      \ "while",
      \]

function! plantumlcomplete#Complete(findstart, base)
  if a:findstart
    let line = getline('.')
    call input(line)
    let start = col('.') - 1
    while start > 0 && line[start-1] =~ '\a'
      let start -= 1
    endwhile
    return start
  else
    let res = []
    for m in s:matches
      if m =~ '^' . a:base
        call add(res, m)
      endif
    endfor
    return res
  endif
endfun

