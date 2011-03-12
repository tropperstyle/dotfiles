" Vim color file
" Maintainer: Roman Gonzalez <romanandnreg at gmail dot com>
" Last Change: 2009 Aug 11
" Version: 0.0.1
" Screenshot: http://img.skitch.com/20090811-ti4b27qbftjybmau32ruygjjwx.jpg
" URL: http://blog.romanandreg.com

" For now this will only work on gvim

set background=dark
highlight clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "sunburst"

if has("gui_running")

	" Custom Ruby/JavaScript links (thanks to vividchalk.vim from tpope)
	hi link railsMethod         PreProc
	hi link rubyDefine          Keyword
	hi link rubySymbol          Constant
	hi link rubyAccess          rubyMethod
	hi link rubyAttribute       rubyMethod
	hi link rubyEval            rubyMethod
	hi link rubyException       rubyMethod
	hi link rubyInclude         rubyMethod
	hi link rubyStringDelimiter rubyString
	hi link rubyRegexp          Regexp
	hi link rubyRegexpDelimiter rubyRegexp
	hi link javascriptRegexpString  Regexp
	hi link javascriptNumber        Number
	hi link javascriptNull          Constant

	hi Normal       guifg=#f8f8f8 guibg=#000000
	hi NonText      guifg=#666666 guibg=#000000
	hi StatusLine   guifg=#ffffff guibg=#121212 gui=bold
	hi StatusLineNC guifg=#ffffff guibg=#121212
	hi Cursor       guifg=#000000 guibg=#a7a7a7
	hi CursorLine   guifg=NONE    guibg=#121212
	hi CursorColumn guifg=NONE    guibg=#121212
	hi Pmenu        guifg=#ffffff guibg=#121212
	hi PmenuSel     guifg=#ffffff guibg=#262d51
	hi Todo         guifg=#fd5ff1 guibg=#000000 gui=italic,underline
	hi PreProc      guifg=#9b859d
	hi Visual                     guibg=#262d51
	hi VisualNOS                  guibg=#202020
	hi Comment      guifg=#3f3f3f               gui=italic
	hi Constant     guifg=#3387cc
	hi Directory    guifg=#3387cc
	hi LineNr       guifg=#666666 guibg=#121212
	hi Identifier   guifg=#99cf50
	hi SpecialKey   guifg=#e28964
	hi Type         guifg=#89bdff
	hi Statement    guifg=#e28964
	hi Operator     guifg=#e28964
	hi String       guifg=#65b042
	hi ErrorMsg     guifg=#fd5ff1 guibg=#562d56
	hi WarningMsg   guifg=#fd5ff1               gui=italic,underline
	hi Regexp       guifg=#cf7d34
	hi Variable     guifg=#3e87e3
	hi Special      guifg=#daefa3
	hi Title        guifg=#cdcdcd
	hi Search       guifg=NONE    guibg=#303030 gui=NONE
	hi IncSearch    guifg=NONE    guibg=#303030 gui=NONE
	hi rubyInstanceVariable    guifg=#3e87e3
	hi rubyBlockArgument       guifg=#3e87e3
	hi rubyMethod              guifg=#e28964
	hi railsUserMethod         guifg=#cf7d34
	hi railsUserClass          guifg=#89bdff
	hi javaScriptType          guifg=#3e87e3
	hi javaScriptOpAssign      guifg=#e28964
	hi javaScriptFuncName      guifg=#3e87e3
	hi javaScriptComment       guifg=#3f3f3f
	hi htmlTag                 guifg=#89bdff
	hi htmlEndTag              guifg=#89bdff
	hi htmlStatement           guifg=#89bdff
	hi cssClassName            guifg=#9b703f
	hi cssIdentifier           guifg=#8b98ab
	hi cssBraces               guifg=#cdcdcd
	hi cssTagName              guifg=#cda869
	hi cssPseudoClass          guifg=#8f9d6a
	hi cssValueNumber          guifg=#dd7b3b
	hi cssValueInteger         guifg=#dd7b3b
	hi cssValueLength          guifg=#e28964
	hi cssValueFrequency       guifg=#dd7b3b
	hi cssValueTime            guifg=#dd7b3b
	hi cssValueAngle           guifg=#dd7b3b
	hi cssColor                guifg=#dd7b3b
	hi cssCommonAttr           guifg=#f9ee98
	hi cssBoxProp              guifg=#c5af75
	hi cssBoxAttr              guifg=#f9ee98
	hi cssFontProp             guifg=#c5af75
	hi cssFontAttr             guifg=#cf6a4c
	hi cssColorProp            guifg=#c5af75
	hi cssColorAttr            guifg=#cf6a4c
	hi cssTextProp             guifg=#c5af75
	hi cssTextAttr             guifg=#f9ee98
	hi cssGeneratedContentProp guifg=#c5af75
	hi cssGeneratedContentAttr guifg=#f9ee98
	hi cssPagingProp           guifg=#c5af75
	hi cssPagingAttr           guifg=#f9ee98
	hi cssUIProp               guifg=#c5af75
	hi cssUIAttr               guifg=#f9ee98
	hi cssRenderProp           guifg=#c5af75
	hi cssRenderAttr           guifg=#f9ee98
	hi cssAuralProp            guifg=#c5af75
	hi cssAuralAttr            guifg=#f9ee98
	hi cssTableProp            guifg=#c5af75
	hi cssTableAttr            guifg=#f9ee98
	hi cssImportant            guifg=#cf6a4c
	hi cssFunctionName         guifg=#f9ee98
	hi cssURL                  guifg=#3e87e3
	hi cssMediaType            guifg=#cf6a4c
	hi cssMediaComma           guifg=#cf6a4c
	hi cssMedia                guifg=#e28964
	hi erubyDelimiter          guifg=#cdcdcd


	highlight lineNr guifg=#505050 guibg=Black
	highlight VertSplit guifg=#DEDEDE guibg=#888888
	highlight IncSearch guibg=#4f5da8
	highlight Cursor guibg=#90aabf
	highlight CursorLine guibg=#141c22
	highlight MatchParen guibg=#DDDDDD guifg=#000000

	" Some defaults for all languages
	highlight Normal guifg=White guibg=Black
	highlight Keyword guifg=#CE864B guibg=Black
	highlight Include   guifg=#CE864B guibg=Black
	highlight Define guifg=#CE864B guibg=Black
	highlight Statement guifg=#CE864B guibg=Black
	highlight Function guifg=#89BDFF guibg=Black
	highlight Comment guifg=#AEAEAE guibg=Black gui=bold
	highlight SpecialComment guifg=#AEAEAE guibg=Black gui=bold
	highlight Constant guifg=#3387CC guibg=Black
	highlight String guifg=#65B042 guibg=Black
	highlight Title guifg=#FFFFFF guibg=Black
	highlight Todo guifg=#FFFFFF guibg=Black gui=underline

	" HTML
	highlight htmlTag guifg=#80BDF7 guibg=Black
	highlight htmlEndTag guifg=#80BDF7 guibg=Black
	highlight htmlTagName guifg=#80BDF7 guibg=Black
	highlight htmlArg guifg=#80BDF7 guibg=Black

	" Ruby specific highlight
	highlight rubyClass guifg=#CE864B guibg=Black
	highlight rubyInterpolationDelimiter guifg=#DAEFA0 guibg=Black
	highlight rubySymbol guifg=#3387CC guibg=Black
	highlight rubyConstant guifg=#3387CC guibg=Black
	highlight rubyStringDelimiter guifg=#65B042 guibg=Black
	highlight rubyBlockParameter guifg=#3387CC guibg=Black
	highlight rubyInstanceVariable guifg=#3387CC guibg=Black
	highlight rubyInclude guifg=#CE864B guibg=Black
	highlight rubyGlobalVariable guifg=#3387CC guibg=Black

	" Rails specific highlight
	highlight rubyRailsMethod guifg=#DAD085 guibg=Black
	highlight rubyRailsUserClass guifg=#89BDFF guibg=Black gui=underline
	highlight railsConditionsSpecial guifg=#DAEFA0 guibg=Black


	" Rails: erb
	highlight erubyDelimiter guifg=#FFFFFF guibg=Black
	highlight erubyRailsRenderMethod guifg=#DAD085 guibg=Black
	highlight erubyRailsHelperMethod guifg=#DAD085 guibg=Black
	highlight javascriptRailsFunction guifg=#CE864B guibg=Black
	" Rails: haml
	highlight hamlTag guifg=#80BDF7 guibg=Black
	highlight hamlClassChar guifg=#DAEFA0 guibg=Black
	highlight hamlClass guifg=#DAEFA0 guibg=Black
	highlight hamlIdChar guifg=#DAD085 guibg=Black
	highlight hamlId guifg=#DAD085 guibg=Black
	highlight hamlAttributesDelimiter guifg=#FFFFFF guibg=Black
	highlight hamlRubyOutputChar guifg=#FFFFFF guibg=Black
	highlight hamlObjectDelimiter guifg=#FFFFFF guibg=Black

	" Javascript specific highlight
	highlight javaScript guifg=#FFFFFF guibg=Black
	highlight javaScriptIdentifier guifg=#3387CC guibg=Black
	highlight javaScriptCommentTodo guifg=#AEAEAE guibg=NONE
	highlight javaScriptBraces guifg=#FFFFFF guibg=Black
	highlight javaScriptFunction guifg=#99C843 guibg=Black
	highlight javaScriptType guifg=#94859D guibg=Black
	highlight javaScriptMember guifg=#94859D guibg=Black
	highlight javaScriptGlobal guifg=#94859D guibg=Black
	highlight javaScriptRegexpString guifg=#E1C062 guibg=Black

	" Improve autocomplete menu color
	highlight Pmenu ctermfg=1 ctermbg=4 guibg=grey30

endif
