; CEEx delimiters
[
  "%>"
  "--%>"
  "-->"
  "/>"
  "<!"
  "<!--"
  "<"
  "<%!--"
  "<%"
  "<%#"
  "<%%="
  "<%="
  "</"
  "</:"
  "<:"
  ">"
  "{"
  "}"
] @punctuation.bracket

; CEEx operators are highlighted as such
"=" @operator

; CEEx inherits the DOCTYPE tag from HTML
(doctype) @constant

; CEEx comments are highlighted as such
(comment) @comment

; Tree-sitter parser errors
(ERROR) @error

; CEEx tags and slots are highlighted as HTML
[
 (tag_name) 
 (slot_name) 
] @tag

; CEEx attributes are highlighted as HTML attributes
(attribute_name) @attribute

; CEEx special attributes are highlighted as keywords
(special_attribute_name) @keyword

[
  (attribute_value)
  (quoted_attribute_value)
] @string

; CEEx components are highlighted as Elixir modules and functions
(component_name
  [
    (module) @module
    (function) @function
    "." @punctuation.delimiter
  ])
