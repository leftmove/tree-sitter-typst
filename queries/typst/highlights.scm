(call
  item: (ident) @function)
(call
  item: (field field: (ident) @function.method))
(tagged field: (ident) @tag)
(field field: (ident) @tag)
(comment) @comment

; CONTROL
(let "let" @keyword.storage.type)
(branch ["if" "else"] @keyword.control.conditional)
(while "while" @keyword.control.repeat)
(for ["for" "in"] @keyword.control.repeat)
(import "import" @keyword.control.import)
(as "as" @keyword.operator)
(include "include" @keyword.control.import)
(show "show" @keyword.control)
(set "set" @keyword.control)
(return "return" @keyword.control)
(flow ["break" "continue"] @keyword.control)

; OPERATOR
(in ["in" "not"] @keyword.operator)
(context "context" @keyword.control)
(and "and" @keyword.operator)
(or "or" @keyword.operator)
(not "not" @keyword.operator)
(sign ["+" "-"] @operator)
(add "+" @operator)
(sub "-" @operator)
(mul "*" @operator)
(div "/" @operator)
(cmp ["==" "<=" ">=" "!=" "<" ">"] @operator)
(fraction "/" @operator)
(fac "!" @operator)
(attach ["^" "_"] @operator)
(wildcard) @operator

; VALUE
(raw_blck "```" @operator) @markup.raw.block
(raw_span "`" @operator) @markup.raw.block
(raw_blck lang: (ident) @tag)
(label) @tag
(ref) @tag
(number) @constant.numeric
(string) @string
(content ["[" "]"] @operator)
(bool) @constant.builtin.boolean
(none) @constant.builtin
(auto) @constant.builtin
(ident) @variable

; MARKUP
(item "-" @punctuation.list_marker)
(term ["/" ":"] @punctuation.list_marker)
(heading "=" @punctuation.special)
(heading "==" @punctuation.special)
(heading "===" @punctuation.special)
(heading "====" @punctuation.special)
(heading "=====" @punctuation.special)
(heading "======" @punctuation.special)
(heading (text) @title)
(heading (emph) @title)
(heading (strong) @title)
(heading (raw_span) @title)
(heading (escape) @title)

(url) @link_uri
(emph) @emphasis
(strong) @emphasis.strong
(symbol) @constant.character
(shorthand) @constant.builtin
(quote) @markup.quote
(align) @operator
(letter) @constant.character
(linebreak) @constant.builtin

(math "$" @operator)
"#" @punctuation.special
"end" @operator

(escape) @constant.character.escape
["(" ")" "{" "}"] @punctuation.bracket
["," ";" ".." ":" "sep"] @punctuation.delimiter
"assign" @punctuation
(field "." @punctuation)
