;; extends

; Inject Lua into standard lua_blocks (content_by_lua_block, access_by_lua_block, etc.)

(directive
  name: (identifier) @injection.language
  body: (block) @injection.content
  (#match? @injection.language "_by_lua_block$")
  (#set! injection.language "lua")
)
