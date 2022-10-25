chapters.reg_arena = function (call_command_name,par2)
    
end


--Define the Area callback functions. 

arena_lib.on_timeout(chapters.modname, function(arena)
    arena_lib.load_celebration(chapters.modname, arena)
    --minetest.chat_send_all("testing Exit")
end)

arena_lib.on_load(chapters.modname, function(arena)
    --minetest.chat_send_all("testing Load")
end)

--[[ This would be good for showing the player how much time is left
arena_lib.on_time_tick(chapters.modname, function(arena)
    block_league.scoreboard_update_time(arena)
end)
]]--