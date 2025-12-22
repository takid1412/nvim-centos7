;; extends

(directive
  name: (identifier) @directive.name
  (#match? @directive.name "_by_lua_block$")
)
