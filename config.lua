chapters = {}
chapters.modname = "chapters"

--Create Minigame in which to save the arenas (aka Chapters)
arena_lib.register_minigame(chapters.modname, {
    hotbar = {slots = 3}, 
    spectate_mode = false, 
    time_mode = "decremental"
})

--Recommended by arena_lib for creating arenas
--Create Command Object and add sub commands to it. 
--TO USE: `/chapters -c foo` and you'll have your first arena called "foo": 🎉 
local cmd = chatcmdbuilder.register(chapters.modname, {
    description = "PARAMETERS: (prepend each with the arena name)\n-c creates an arena\n-e is used to edit\n-en enables the arena",
    privs = {
        server = true
    }
})

cmd:sub("-c :arena", function(name, arena_name)
    arena_lib.create_arena(name, chapters.modname, arena_name)
end)

cmd:sub("-e :arena", function(sender, arena_name)
    arena_lib.enter_editor(sender, chapters.modname, arena_name)
end)

cmd:sub("-en :arena", function(sender, arena_name)
    arena_lib.enable_arena(sender, chapters.modname, arena_name)
end)