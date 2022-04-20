if exists('b:current_syntax')
    finish
endif

syntax case ignore

syntax match ca65DecNumber '\<[0-9]\+\>'
syntax match ca65HexNumber '\$[0-9a-f]\+\>'
syntax match ca65BinNumber '%[01]\+\>'

syntax region ca65String start='"' skip='\\\\\|\\"' end='"'
syntax match ca65Character "'[^\\]'"

syntax match ca65Operator '+'
syntax match ca65Operator '-'
syntax match ca65Operator '\~'
syntax match ca65Operator '<'
syntax match ca65Operator '>'
syntax match ca65Operator '\^'
syntax match ca65Operator '\*'
syntax match ca65Operator '/'
syntax match ca65Operator '&'
syntax match ca65Operator '<<'
syntax match ca65Operator '>>'
syntax match ca65Operator '|'
syntax match ca65Operator '='
syntax match ca65Operator '<>'
syntax match ca65Operator '<='
syntax match ca65Operator '>='
syntax match ca65Operator '&&'
syntax match ca65Operator '||'
syntax match ca65Operator '!'
syntax match ca65Operator ':='

syntax match ca65SpecialChar '#'
syntax match ca65SpecialChar '@'

syntax match ca65Label '\<[a-z_][0-9a-z_]*:'he=e-1

syntax region ca65Comment start=';' end='$' contains=ca65Todo,@Spell

syntax keyword ca65Todo contained TODO FIXME XXX NOTE HACK

syntax match ca65UnknownDirective '\.[a-z_][0-9a-z_]*\>'

syntax match ca65Directive '\.define\>'
syntax match ca65Directive '\.endmacro\>'
syntax match ca65Directive '\.feature\>'
syntax match ca65Directive '\.incbin\>'
syntax match ca65Directive '\.include\>'
syntax match ca65Directive '\.macro\>'
syntax match ca65Directive '\.segment\>'
syntax match ca65Directive '\.setcpu\>'

syntax match ca65DataDirective '\.addr\>'
syntax match ca65DataDirective '\.asciiz\>'
syntax match ca65DataDirective '\.byte\>'
syntax match ca65DataDirective '\.dbyt\>'
syntax match ca65DataDirective '\.dword\>'
syntax match ca65DataDirective '\.hibytes\>'
syntax match ca65DataDirective '\.literal\>'
syntax match ca65DataDirective '\.lobytes\>'
syntax match ca65DataDirective '\.res\>'
syntax match ca65DataDirective '\.word\>'

syntax match ca65LinkerDirective '\.export\>'
syntax match ca65LinkerDirective '\.import\>'
syntax match ca65LinkerDirective '\.org\>'

syntax keyword ca65SpecialMnemonic bcc
syntax keyword ca65SpecialMnemonic bcs
syntax keyword ca65SpecialMnemonic beq
syntax keyword ca65SpecialMnemonic bmi
syntax keyword ca65SpecialMnemonic bne
syntax keyword ca65SpecialMnemonic bpl
syntax keyword ca65SpecialMnemonic brk
syntax keyword ca65SpecialMnemonic bvc
syntax keyword ca65SpecialMnemonic bvs
syntax keyword ca65SpecialMnemonic cli
syntax keyword ca65SpecialMnemonic jmp
syntax keyword ca65SpecialMnemonic jsr
syntax keyword ca65SpecialMnemonic pha
syntax keyword ca65SpecialMnemonic php
syntax keyword ca65SpecialMnemonic pla
syntax keyword ca65SpecialMnemonic plp
syntax keyword ca65SpecialMnemonic rti
syntax keyword ca65SpecialMnemonic rts
syntax keyword ca65SpecialMnemonic sei
syntax keyword ca65SpecialMnemonic tsx
syntax keyword ca65SpecialMnemonic txs

syntax case match

highlight default link ca65DecNumber ca65Number
highlight default link ca65HexNumber ca65Number
highlight default link ca65BinNumber ca65Number

highlight default link ca65Number Number
highlight default link ca65String String
highlight default link ca65Character Character
highlight default link ca65Operator Operator
highlight default link ca65SpecialChar SpecialChar
highlight default link ca65Label Identifier
highlight default link ca65Comment Comment
highlight default link ca65Todo Todo
highlight default link ca65UnknownDirective Error
highlight default link ca65Directive PreProc
highlight default link ca65DataDirective Type
highlight default link ca65LinkerDirective StorageClass
highlight default link ca65SpecialMnemonic Keyword

let b:current_syntax = 'ca65'
