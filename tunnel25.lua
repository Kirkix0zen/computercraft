function creuser_tunnel()

    local hauteur = 4
    local longueur = 25
    local largeur = 5

    
    for l = 1, longueur do  
        
        for h = 1, hauteur do  
            if turtle.detectUp() then
                turtle.digUp()  
            end
            if turtle.detectDown() then
                turtle.digDown() 
            end
            if turtle.detect() then
                turtle.dig() 
            end
            turtle.forward()  
        end

        if l % 2 == 1 then 
            turtle.turnLeft()
            if turtle.detect() then
                turtle.dig()
            end
            turtle.forward()
            turtle.turnRight()
            turtle.turnRight()
            if turtle.detect() then
                turtle.dig()
            end
            turtle.forward()
            turtle.turnLeft()
        end
    end
end

creuser_tunnel()
