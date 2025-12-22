;; extends

; Inject Lua into standard lua_blocks (content_by_lua_block, access_by_lua_block, etc.)

(directive
  (directive_name) @name
  (block) @injection.content
  (#match? @name ".*_by_lua_block$")
  (#set! injection.language "lua"))
