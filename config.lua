Config = {}

Config.CurarePlayer = true -- se curare il player quando viene danneggiato da un veicolo
Config.VdmChance = 3       -- dopo quanti vdm un player deve essere kikkato
Config.VdmRemover = 10     -- dopo quanto tempo un vdm viene tolto (in minuti)
Config.UseNotificationSound = true
Config.NotificationSound = {
    "TIMER_STOP",
    "HUD_MINI_GAME_SOUNDSET"
}

function Config.revivePlayer(player)
    TriggerEvent('esx_ambulancejob:revive') -- change to your revive trigger or export
end

function Config.sendNotification(title, desc)
    lib.notify({
        title = title,
        description = desc,
        position = 'top',
        style = {
            backgroundColor = '#F03E3E',
            color = '#FFF5F5',
            padding = '15px',
            borderRadius = '8px',
            ['.description'] = {
                color = '#FFE3E3'
            }
        },
        icon = 'exclamation-triangle',
        iconColor = '#FFA500'
    })
end

Config.Lang = {
    ["title"] = "ANTI VDM SYSTEM",
    ["desc"] = " WARN | Ich weiß, dass ich vor der Investition in einen Player (Galaxy City VDM System) gewarnt wurde.    ",
    ["punish_event"] = "Ich weiß, dass ich feststecke, weil ich ein Ereignis ausgelöst habe",
    ["punish_vdm"] = "Ich weiß, dass dieses bannato per fatto vdm variiert",
    ["ress"] = "Ich kenne den Status! | Nova Scripts"
}
