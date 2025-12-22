;; extends

(directive
  .
  (_) @injection.language
  (block) @injection.content
  (#match? @injection.language "_by_lua_block$")
  (#set! injection.language "lua")
)
