--takes input for mine length
io.write("Enter mine length: ")
lengthinput = io.read()

io.write("only store ores?[yes/no]: ")
dounwantedblocks = io.read()

length = lengthinput / 2

dis = 0

--hashtable of all ores the turtle will look to mine. 
targetores = {}
targetores["minecraft:diamond_ore"] = true
targetores["minecraft:iron_ore"] = true
targetores["minecraft:copper_ore"] = true
targetores["minecraft:gold_ore"] = true
targetores["minecraft:coal_ore"] = true
targetores["minecraft:lapis_ore"] = true
targetores["minecraft:redstone_ore"] = true
targetores["minecraft:lit_redstone_ore"] = true
targetores["minecraft:emerald_ore"] = true
targetores["minecraft:quartz_ore"] = true
targetores["minecraft:nether_gold_ore"] = true
targetores["minecraft:ancient_debris"] = true
targetores["minecraft:deepslate_coal_ore"] = true
targetores["minecraft:deepslate_copper_ore"] = true
targetores["minecraft:deepslate_diamond_ore"] = true
targetores["minecraft:deepslate_emerald_ore"] = true
targetores["minecraft:deepslate_gold_ore"] = true
targetores["minecraft:deepslate_iron_ore"] = true
targetores["minecraft:deepslate_lapis_ore"] = true
targetores["minecraft:deepslate_redstone_ore"] = true
targetores["tconstruct:cobalt_ore"] = true
targetores["create:deepslate_zinc_ore"] = true
targetores["create:zinc_ore"] = true

unwantedblocks = {}
unwantedblocks["minecraft:stone"] = true
unwantedblocks["minecraft:granite"] = true
unwantedblocks["minecraft:diorite"] = true
unwantedblocks["minecraft:andesite"] = true
unwantedblocks["minecraft:dirt"] = true
unwantedblocks["minecraft:cobblestone"] = true
unwantedblocks["minecraft:sand"] = true
unwantedblocks["minecraft:gravel"] = true
unwantedblocks["minecraft:basalt"] = true
unwantedblocks["minecraft:blackstone"] = true
unwantedblocks["minecraft:deepslate"] = true
unwantedblocks["minecraft:tuff"] = true
unwantedblocks["netherrack"] = true

--refuels from the turtles first inventory slot then prints the current fuel level
function fuelInfo()
    fuel = turtle.getFuelLevel()
    while fuel < 200 do
        turtle.select(1)
        turtle.refuel(1)
    end
    print(fuel)
end

--detects if the turtle is facing a block.
--if the turtle is facing a block it will mine that block and move forward into that space.
--once the turtle has moved forward it will inspect the blocks around it to see if they are listed in the targetores hashtable.
--if listed in the hashtable the turtle will mine those blocks.
function dig()
    for i = 1,length do
            turtle.dig()
            turtle.forward()
--            do local success, data = turtle.inspectUp()
--                if targetores[data.name] then
--                    turtle.digUp()
--                end
--            end
            do local success, data = turtle.inspectDown()
                if targetores[data.name] then
                    turtle.digDown()
                end
            end
            do turtle.turnLeft()
                do local success, data = turtle.inspect()
                    if targetores[data.name] then
                        turtle.dig()
                        turtle.turnRight()
                    else turtle.turnRight()
                    end
                end
            end
            do turtle.turnRight()
                do local success, data = turtle.inspect()
                    if targetores[data.name] then
                        turtle.dig()
                        turtle.turnLeft()
                    else turtle.turnLeft() 
                    end
                end
            end



            turtle.digUp()
            turtle.up()
            do local success, data = turtle.inspectUp()
                if targetores[data.name] then
                    turtle.digUp()
                end
            end
--                do local success, data = turtle.inspectDown()
--                    if targetores[data.name] then
--                        turtle.digDown()
--                    end
--                end
            do turtle.turnLeft()
                do local success, data = turtle.inspect()
                    if targetores[data.name] then
                        turtle.dig()
                        turtle.turnRight()
                    else turtle.turnRight()
                    end
                end
            end
            do turtle.turnRight()
                do local success, data = turtle.inspect()
                    if targetores[data.name] then
                        turtle.dig()
                        turtle.turnLeft()
                    else turtle.turnLeft()  
                    end
                end
            end



            turtle.dig()
            turtle.forward()
            do local success, data = turtle.inspectUp()
                if targetores[data.name] then
                    turtle.digUp()
                end
            end
--                do local success, data = turtle.inspectDown()
--                    if targetores[data.name] then
--                        turtle.digDown()
--                    else turtle.turnRight() 
--                    end
--                end
            do turtle.turnLeft()
                do local success, data = turtle.inspect()
                    if targetores[data.name] then
                        turtle.dig()
                        turtle.turnRight()
                    else turtle.turnRight()
                    end
                end
            end
            do turtle.turnRight()
                do local success, data = turtle.inspect()
                    if targetores[data.name] then
                        turtle.dig()
                        turtle.turnLeft()
                    else turtle.turnLeft() 
                    end
                end
            end



            turtle.digDown()
            turtle.down()
--                do local success, data = turtle.inspectUp()
--                    if targetores[data.name] then
--                        turtle.digUp()
--                    end
--                end
            do local success, data = turtle.inspectDown()
                if targetores[data.name] then
                    turtle.digDown()
                end
            end
            do turtle.turnLeft()
                do local success, data = turtle.inspect()
                    if targetores[data.name] then
                        turtle.dig()
                        turtle.turnRight()
                    else turtle.turnRight()
                    end
                end
            end
            do turtle.turnRight()
                do local success, data = turtle.inspect()
                    if targetores[data.name] then
                        turtle.dig()
                        turtle.turnLeft()
                    else turtle.turnLeft() 
                    end
                end
            end

            dis = dis + 1
            print(dis)

            if dis%7 == 0 then
                turtle.turnLeft()
                turtle.turnLeft()
                turtle.select(2)
                turtle.place(2)
                turtle.turnRight()
                turtle.turnRight()
            end
            
            if dounwantedblocks == "yes" then
                if dis%7 == 0 then
                    x = 1

                    for ii = 1, 15, 1 do
                        x = x + 1
                        turtle.select(x)
                            local data = turtle.getItemDetail()
                                if data then
                                    if unwantedblocks[data.name] then 
                                            turtle.drop(64)
                                        end
                                    end
                                end
                            end
                end
            end
        end

--calls the fuelinfo function.
fuelInfo() 

--calls the dig function.
dig()

print("here")