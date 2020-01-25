" Colors:
" 
" Background #232323
" Normal #b5b5b5 
" Line Numbers fg #616161
" Line Numbers bg #2c2c2c
" Cursor bg #2c2c2c
" Selection bg #4c4c4c

" Error #bc1c00 

" Orange #f0952d 
" Orange light #e8d07a 
" Blue #468acc 
" Blue light #a0cfcf 
" Green #6cb255 
" Light green #629755 
" Light red #ce9178 

set t_Co=256

let g:colors_name="skythunder"
set background=dark

highlight clear
if exists("syntax_on")
  syntax reset
endif

if &background == "light"

elseif &background == "dark"
    hi Conceal gui=NONE guifg=#808080 guibg=NONE
    hi Conditional gui=NONE guifg=#8f8f8f guibg=NONE
    hi DiffAdd gui=NONE guifg=NONE guibg=#2D4639
    hi DiffChange gui=NONE guifg=NONE guibg=#333E49
    hi DiffDelete gui=NONE guifg=NONE guibg=#47342E
    hi DiffText gui=NONE guifg=NONE guibg=#385570
    hi Directory gui=NONE guifg=#8f8f8f guibg=NONE
    hi FoldColumn gui=NONE guifg=#616161 guibg=NONE
    hi Folded gui=NONE guifg=#707070 guibg=NONE
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=#f0952d guibg=#a00000
    hi Search gui=NONE guifg=#232323 guibg=#f0952d
    hi MatchParen gui=NONE guifg=NONE guibg=#4c4c4c
    hi ModeMsg gui=NONE guifg=NONE guibg=NONE
    hi MoreMsg gui=NONE guifg=NONE guibg=NONE
    hi Pmenu gui=NONE guifg=NONE guibg=#1a1a1a
    hi PmenuSbar gui=NONE guifg=NONE guibg=#262626
    hi PmenuSel gui=NONE guifg=NONE guibg=#333333
    hi PmenuThumb gui=NONE guifg=NONE guibg=#424242
    hi Question gui=NONE guifg=NONE guibg=NONE
    hi SignColumn gui=NONE guifg=#616161 guibg=NONE
    hi Special gui=NONE guifg=#808080 guibg=NONE
    hi SpecialKey gui=NONE guifg=#616161 guibg=NONE
    hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#260808
    hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
    hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#082608
    hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#262626
    hi StatusLine gui=NONE guifg=#9e9e9e guibg=#262626
    hi StatusLineNC gui=NONE guifg=#707070 guibg=#262626
    hi StorageClass gui=NONE guifg=#fee795 guibg=NONE
    hi TabLine gui=NONE guifg=#707070 guibg=#262626
    hi TabLineFill gui=NONE guifg=NONE guibg=#262626
    hi TabLineSel gui=NONE guifg=#9e9e9e guibg=#262626
    hi Todo gui=standout guifg=#2a79f9 guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=NONE guifg=#333333 guibg=NONE
    hi WarningMsg gui=NONE guifg=NONE guibg=#260808
    hi WildMenu gui=NONE guifg=NONE guibg=#525252
    hi PreProc gui=NONE guifg=NONE guibg=NONE
    hi Number gui=NONE guifg=#468acc  guibg=NONE

"    hi Normal gui=NONE guifg=#ffa805 guibg=#1a1a1a
    hi Normal gui=NONE guifg=#b5b5b5 guibg=#232323
    hi NonText gui=NONE guifg=#616161 guibg=#232323
    hi Title gui=NONE guifg=#ffffff guibg=NONE

    hi LineNr gui=NONE guifg=#616161 guibg=#2c2c2c
    hi CursorLineNr gui=NONE guifg=#f0952d guibg=NONE
    hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorLine gui=NONE guifg=NONE guibg=#2c2c2c
    hi CursorColumn gui=NONE guifg=NONE guibg=#282828
    hi ColorColumn gui=NONE guifg=NONE guibg=#282828
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Visual gui=NONE guifg=NONE guibg=#4c4c4c
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE

    hi Error gui=NONE guifg=#bc1c00 guibg=#260808
    hi ErrorMsg gui=NONE guifg=#bc1c00 guibg=#260808

    hi Comment gui=NONE guifg=#707070 guibg=NONE
    hi StorageClass gui=NONE guifg=#f0952d guibg=NONE
    hi Statement gui=NONE guifg=#f0952d guibg=NONE

    hi Braces gui=NONE guifg=#b5b5b5 guibg=NONE
    hi Type gui=NONE guifg=#f0952d guibg=NONE
    hi String gui=NONE guifg=#629755 guibg=NONE
    hi Identifier gui=NONE guifg=#a0cfcf guibg=NONE
    hi Constant gui=NONE guifg=#468acc guibg=NONE
    hi Function gui=NONE guifg=#e8d07a guibg=NONE
    hi Structure gui=NONE guifg=#f0952d guibg=NONE
    hi Repeat gui=NONE guifg=#f0952d guibg=NONE
    hi Conditional gui=NONE guifg=#f0952d guibg=NONE
    hi Define gui=NONE guifg=#f0952d guibg=NONE
    hi Exception gui=NONE guifg=#f0952d guibg=NONE
    hi Boolean gui=NONE guifg=#468acc guibg=NONE
    hi Include gui=NONE guifg=#f0952d guibg=NONE

    hi cssTagName gui=NONE guifg=#f0952d guibg=NONE
    hi cssClassName gui=NONE guifg=#f0952d guibg=NONE
    hi cssIdentifier gui=NONE guifg=#f0952d guibg=NONE
    hi cssProp gui=NONE guifg=#e8d07a guibg=NONE
    " hi cssAttr gui=NONE guifg=#6cb255 guibg=NONE

    hi htmlTag gui=NONE guifg=#fbdf9d guibg=NONE "<>
    hi htmlEndTag gui=NONE guifg=#fbdf9d guibg=NONE "</>
    hi htmlTagName gui=NONE guifg=#f0952d guibg=NONE " a body head
    hi htmlArg gui=NONE guifg=#fbdf9d guibg=NONE " href=
    hi htmlSpecialTagName gui=NONE guifg=#fbdf9d guibg=NONE " <script> <style>
    hi htmlString gui=NONE guifg=#a0cfcf guibg=NONE " ="attribute value"
    hi htmlHead gui=NONE guifg=#a0cfcf guibg=NONE " ="attribute value"
    hi javaScript gui=NONE guifg=#fbdf9d guibg=NONE

    hi phpDocComment gui=NONE guifg=#629755 guibg=NONE
    hi phpDocTags gui=BOLD guifg=#629755 guibg=NONE
    hi phpDocParam gui=NONE guifg=#629755 guibg=NONE
    hi phpDocIdentifier gui=NONE guifg=#629755 guibg=NONE
endif

"syn match phpDelimiter php
"match phpDelimiter /\v(\<\?php)|(\?\>)/
"hi link phpDelimiter Structure

hi link phpVarSelector Identifier
hi link phpMethodsVar Identifier
hi link phpFunction Function
hi link phpKeyword Statement
hi link phpMethod Function
hi link phpInclude Statement

hi link javaScriptFunction Statement
hi link jsThis Statement
hi link jsVariableDef Identifier
hi link jsFuncArgs Identifier
hi link jsFuncCall Function
hi link jsFuncArgs Function

hi link javaScriptFunction Statement
hi link jsThis Statement
hi link jsVariableDef Identifier
hi link jsFuncArgs Identifier
hi link jsFuncCall Function
hi link jsFuncArgs Function
hi link jsObjectProp Function

hi link typescriptOperator Statement
hi link typescriptBraces Braces
hi link typescriptEnumKeyword Statement
hi link typescriptVariable Statement
hi link typescriptVariableDeclaration Identifier
hi link typescriptCall Identifier
hi link typescriptPredefinedType Boolean
hi link typescriptClassName Function
hi link typescriptProp Function
hi link typescriptRequestProp Function
hi link typescriptExport Include
hi link typescriptAmbientDeclaration Define
hi link typescriptImport Include
