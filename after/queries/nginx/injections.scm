; extends

; Inject Lua into standard lua_blocks (content_by_lua_block, access_by_lua_block, etc.)
(lua_block) @injection.content
(#set! injection.language "lua")
