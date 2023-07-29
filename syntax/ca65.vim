if exists('b:current_syntax')
    finish
endif

syntax case ignore

syntax match ca65DecNumber '\<[0-9]\+\>'
syntax match ca65HexNumber '\$[0-9a-f]\+\>'
syntax match ca65BinNumber '%[01]\+\>'

syntax region ca65String start='"' skip='\\\\\|\\"' end='"'
syntax match ca65Character "'[^\\]'"

syntax match ca65UnknownDirective '\.[a-z_][0-9a-z_]*\>'

syntax match ca65Operator '+'
syntax match ca65Operator '-'
syntax match ca65Operator '\~'
syntax match ca65Operator '<'
syntax match ca65Operator '>'
syntax match ca65Operator '\^'
syntax match ca65Operator '\*'
syntax match ca65Operator '/'
syntax match ca65Operator '\.mod'
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

syntax keyword ca65AddressSize zeropage absolute

syntax keyword ca65Todo contained TODO FIXME XXX NOTE HACK

syntax match ca65Directive '\.charmap\>'
syntax match ca65Directive '\.define\>'
syntax match ca65Directive '\.else\>'
syntax match ca65Directive '\.elseif\>'
syntax match ca65Directive '\.endif\>'
syntax match ca65Directive '\.endrepeat\>'
syntax match ca65Directive '\.endmacro\>'
syntax match ca65Directive '\.error\>'
syntax match ca65Directive '\.feature\>'
syntax match ca65Directive '\.if\>'
syntax match ca65Directive '\.ifblank\>'
syntax match ca65Directive '\.ifconst\>'
syntax match ca65Directive '\.ifdef\>'
syntax match ca65Directive '\.ifnblank\>'
syntax match ca65Directive '\.ifndef\>'
syntax match ca65Directive '\.ifnref\>'
syntax match ca65Directive '\.ifref\>'
syntax match ca65Directive '\.incbin\>'
syntax match ca65Directive '\.include\>'
syntax match ca65Directive '\.macro\>'
syntax match ca65Directive '\.match\>'
syntax match ca65Directive '\.paramcount\>'
syntax match ca65Directive '\.repeat\>'
syntax match ca65Directive '\.segment\>'
syntax match ca65Directive '\.setcpu\>'
syntax match ca65Directive '\.undef\>'
syntax match ca65Directive '\.undefine\>'
syntax match ca65Directive '\.xmatch\>'

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
syntax match ca65LinkerDirective '\.exportzp\>'
syntax match ca65LinkerDirective '\.import\>'
syntax match ca65LinkerDirective '\.importzp\>'
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

" HuC6280
syntax keyword ca65SpecialMnemonic bbr0
syntax keyword ca65SpecialMnemonic bbr1
syntax keyword ca65SpecialMnemonic bbr2
syntax keyword ca65SpecialMnemonic bbr3
syntax keyword ca65SpecialMnemonic bbr4
syntax keyword ca65SpecialMnemonic bbr5
syntax keyword ca65SpecialMnemonic bbr6
syntax keyword ca65SpecialMnemonic bbr7
syntax keyword ca65SpecialMnemonic bbs0
syntax keyword ca65SpecialMnemonic bbs1
syntax keyword ca65SpecialMnemonic bbs2
syntax keyword ca65SpecialMnemonic bbs3
syntax keyword ca65SpecialMnemonic bbs4
syntax keyword ca65SpecialMnemonic bbs5
syntax keyword ca65SpecialMnemonic bbs6
syntax keyword ca65SpecialMnemonic bbs7
syntax keyword ca65SpecialMnemonic bra
syntax keyword ca65SpecialMnemonic bsr
syntax keyword ca65SpecialMnemonic phx
syntax keyword ca65SpecialMnemonic phy
syntax keyword ca65SpecialMnemonic plx
syntax keyword ca65SpecialMnemonic ply
syntax keyword ca65SpecialMnemonic set
syntax keyword ca65SpecialMnemonic tam
syntax keyword ca65SpecialMnemonic tma

syntax keyword ca65SpecialMnemonic PUSH_A PUSH_X PUSH_Y PUSH_MPR0 PUSH_MPR1 PUSH_MPR2 PUSH_MPR3 PUSH_MPR4 PUSH_MPR5 PUSH_MPR6 PUSH_MPR7 PUSH
syntax keyword ca65SpecialMnemonic POP_A POP_X POP_Y POP_MPR0 POP_MPR1 POP_MPR2 POP_MPR3 POP_MPR4 POP_MPR5 POP_MPR6 POP_MPR7 POP

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
highlight default link ca65AddressSize StorageClass
highlight default link ca65Todo Todo
highlight default link ca65UnknownDirective Error
highlight default link ca65Directive PreProc
highlight default link ca65DataDirective Type
highlight default link ca65LinkerDirective StorageClass
highlight default link ca65SpecialMnemonic Keyword

let b:current_syntax = 'ca65'
