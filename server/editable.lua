WEBHOOK = "https://discord.com/api/webhooks/1047910175262113832/hvDsxfE4-fKgzDuvLyXkji3BDsFSOIfy2mBesF46D7gkyRkWMgnoBdzAZ6e95s9bMrPt"

function punishPlayer(target, case)
    local message = ""

    if case == "event" then
        message = string.format("Sei stato kikkato/bannato per aver triggerato un evento (FREE ANTI-TRIGGER by https://discord.gg/XxtCBxwB)")
        createLog(true, target)
    elseif case == "vdm" then
        message = string.format("Sei stato kickato/bannato per aver fatto vari vdm all'interno di questo server!")
    end

    if message == "" then return end

    local header = "Nova Scripts | ANTI VDM SYSTEM"
    local footer = "Se credi che sia stato un errore, contatta l'assistenza!. \n by Nova Service (https://discord.gg/XxtCBxwB) \nANTIVDM SYSTEM"

    local fullMessage = string.format("%s\n\n%s\n\n%s", header, message, footer)

    DropPlayer(target, fullMessage)
end
