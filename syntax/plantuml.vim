" Vim syntax file
" Language: PlantUml diagrams definition language
" Maintainer: Valeriy Kireev
" Latest Revision: 15 May 2019

if exists("b:current_syntax")
  finish
endif

syn keyword participantTypes
      \ actor
      \ boundary
      \ collections
      \ control
      \ participant
      \ queue
      \ start
      \ stop
      \ usecase

syn keyword participantGroupTypes
      \ artifact
      \ card
      \ cloud
      \ component
      \ database
      \ else
      \ elseif
      \ repeat
      \ while
      \ endwhile
      \ endif
      \ entity
      \ file
      \ folder
      \ frame
      \ if
      \ is
      \ interface
      \ node
      \ package
      \ rectangle
      \ storage
      \ then
      \ together

syn keyword operator
      \ as

syn keyword directive
      \ @startum
      \ @endum
      \ title
      \ skinparam
      \ autonumber
      \ activate
      \ deactivate
      \ destroy
      \ loop
      \ alt
      \ else
      \ end

syn keyword bool
      \ true
      \ false

syn match relation "\v\<\."
syn match relation "\v\<\.\."
syn match relation "\v\<-"
syn match relation "\v\<--"
syn match relation "\v\.\>"
syn match relation "\v\.\.\>"
syn match relation "\v-\>"
syn match relation "\v--\>"
syn match relation "\v--"
syn match relation "\v\.\."
syn match relation "\v-"
syn match relation "\v\."

syn region compLabel start='\[' end=']' fold contains=@Spell
syn region participantGroup start='{' end='}' transparent
      \ contains=participantGroupTypes,participantTypes,operator,relation,compLabel,@NoSpell
syn region looping start='loop' end='end'
      \ contains=participantGroupTypes,participantTypes,operator,relation,compLabel,@NoSpell
      \ fold transparent

syn keyword todoComment contained TODO FIXME NOTE
syn match comment "'.*$" contains=todoComment

hi def link todoComment            Todo
hi def link comment                Comment
hi def link participantGroupTypes  Statement
hi def link participantTypes       Type
hi def link directive              PreProc
hi def link bool                   Boolean
hi def link operator               Statement
hi def link relation               Special

let b:current_syntax = "plantuml"

