fuel = turtle.getFuelLevel()

print("Current fuel level: "..fuel)

print("refuel? [yes/no]")
dofuelcheck = io.read()

print("Do order once or repeat untill fual level is 200 [yes/no]")
doforever = io.read()

function fuelInfo()
    if dofuelcheck == "yes" then
        turtle.select(1)
        if turtle.getItemCount() > 1 then
            local data = turtle.getItemDetail()
                if data.name == "minecraft:coal" then
                    while fuel < 200 do
                        turtle.refuel(1)
                    end
                else
                    print("Slot 1 is not Coal, please provide coal")
                end
            end
        else
            print("Please provide fuel (coal)")
        end
        print("Refueled to a level of: "..fuel)
    end

function chop()
    print ("Doing Order")
    while wood == false do
        do local success, data = turtle.inspect()
            if data.name == "minecraft:spruce_log" then
                turtle.dig()
                turtle.forward()
                print("ok")
            end
        end

        wood = "true"
        y = 0
        while wood == "true" do
            do local success, data = turtle.inspectUp()
                if data.name == "minecraft:spruce_log" then
                    turtle.dig()
                    turtle.forward()
                    turtle.turnRight()
                    turtle.dig()
                    turtle.forward()
                    turtle.turnRight()
                    turtle.dig()
                    turtle.forward()
                    turtle.turnRight()
                    turtle.forward()
                    turtle.digUp()
                    turtle.up()
                    turtle.turnRight()
                    y = y + 1
                elseif data.name == "minecraft:spruce_leaves" then
                            while y > 0 do
                                turtle.down()
                                y = y - 1
                                if y == 0 and doforever == "yes" then
                                    turtle.place(2)
                                    turtle.turnRight()
                                    turtle.forward()
                                    turtle.turnLeft()
                                    turtle.place(2)
                                    turtle.back()
                                    turtle.place(2)
                                    turtle.turnLeft()
                                    turtle.forward()
                                    turtle.turnRight()
                                    turtle.place(2)
                                    turtle.turnLeft()
                                    for i = 1, 4, 1 do
                                        turtle.forward()
                                    end
                                    turtle.turnRight()
                                    for i = 1, 5, 1 do
                                        turtle.forward()
                                    end
                                    turtle.turnRight()
                                    
                                    circle = 9
                                    while circle > 3 do
                                        for ii = 1, circle, -1 do
                                            turtle.forward()
                                            turtle.suck()
                                        end
                                        turtle.turnRight()
                                        circle = circle - 1
                                    end
                                    
                                    turtle.turnRight()
                                    turtle.forward()
                                    wood = "false"
                                end
                            end
                        end
                    end
            end
        end
    end

fuelInfo()

chop()
