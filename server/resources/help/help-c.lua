RegisterCommand("Taco", function()
    msg("Hej, Nogle af de her scripts er lavet af Taco#0679"),
    msg("Hej, Nogle af de her scripts er lavet af Taco#0679")
end, false)

function msg(text)
    TriggerEvent("chatMessage", "[Server]", {255,0,0} text)
end