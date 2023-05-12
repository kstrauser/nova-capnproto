; Preproc

[
  (unique_id)
  (top_level_annotation_body)
] @processing

; Includes

[
  "import"
  "$import"
  "embed"
  "using"
] @processing

(import_path) @string

; Keywords

[
  "annotation"
  "enum"
  "group"
  "interface"
  "struct"
  "union"
  "extends"
  "namespace"
] @keyword

; Builtins

[
  "const"
] @identifier.qualifier

[
  (primitive_type)
  "List"
] @identifier.type

; Typedefs

(type_definition) @definition.type

; Labels (@number, @number!)

(field_version) @identifier.constant

; Methods

[
  (annotation_definition_identifier)
  (method_identifier)
] @definition.method

; Fields

(field_identifier) @identifier.key

; Properties

(property) @identifier.property

; Parameters

[
  (param_identifier)
  (return_identifier)
] @identifier.argument

(annotation_target) @identifier.method

; Constants

[
  (const_identifier)
  (local_const)
  (enum_member)
] @identifier.constant

(void) @value.null

; Types

[
  (enum_identifier)
  (extend_type)
  (type_identifier)
] @identifier.type

; Attributes

[
  (annotation_identifier)
  (attribute)
] @identifier.property

; Operators

"=" @operator

; Literals

[
  (string)
  (concatenated_string)
  (block_text)
  (namespace)
] @string

(namespace) @string

(escape_sequence) @value.entity

(data_string) @string

(number) @value.number

(float) @value.number

(boolean) @value.boolean

(data_hex) @value.entity

; Punctuation

[
  "*"
  "$"
  ":"
] @string

["{" "}"] @bracket

["(" ")"] @bracket

["[" "]"] @bracket

[
  ","
  ";"
  "->"
] @string

; Comments

(comment) @comment

; Errors

(ERROR) @invalid
