WEBHOOK = "https://discord.com/api/webhooks/1047910175262113832/hvDsxfE4-fKgzDuvLyXkji3BDsFSOIfy2mBesF46D7gkyRkWMgnoBdzAZ6e95s9bMrPt"

function punishPlayer(target, case)
    local message = ""

    if case == "event" then
        message = string.format("Sei stato kikkato/bannato, um ein Ereignis auszulösen (FREE ANTI-TRIGGER von https://discord.gg/XxtCBxwB)")
        createLog(true, target)
    elseif case == "vdm" then
        message = string.format("Sie haben den Status „Kickato/Bannato“ erhalten, um sicherzustellen, dass Sie auf diesem Server viele verschiedene Funktionen haben!")
    end

    if message == "" then return end

    local header = "Galaxy City | ANTI VDM SYSTEM"
    local footer = "Wenn Sie glauben, dass Sie sich irren, wenden Sie sich an den Assistenten! \n von Nova Service (https://discord.gg/XxtCBxwB) \nANTIVDM SYSTEM"

    local fullMessage = string.format("%s\n\n%s\n\n%s", header, message, footer)

    DropPlayer(target, fullMessage)
end
