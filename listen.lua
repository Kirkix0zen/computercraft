-- Ouvrir le modem sans fil (assume qu'il est à droite)
rednet.open("right") 

print("En attente de messages...")

while true do
    -- Recevoir le message
    local senderID, message = rednet.receive()  
    -- Afficher le message reçu
    print("Message reçu de " .. senderID .. " : " .. message)
end