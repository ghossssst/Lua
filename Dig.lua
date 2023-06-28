print("Enter High: ")
inputy = io.read()

print("Enter Length: ")
inputx = io.read()

print("Enter Width: ")
inputz = io.read()

y = tonumber(inputy)
x = tonumber(inputx)
z = tonumber(inputz)

recfuel = y * x * z 

fuel = turtle.getFuelLevel()

if recfuel > fuel then
    print("[WARNING] Insufficient fuel to complete task")
    do return end
end

function hight()

    ry = 0

    while ry < y do
        slice()

        
    end
end

function slice()

    ry = 0

    while ry < y do

        rz = 0

        while rz < z do

            rx = 1

            while rx < x do
                turtle.dig()
                turtle.forward()
                rx = rx + 1
                if rx == x then
                    if rz % 2 == 0 then
                        turtle.turnRight()
                        turtle.dig()
                        turtle.forward()
                        turtle.turnRight()
                    elseif rz % 2 ~= 0 then
                        turtle.turnLeft()
                        turtle.dig()
                        turtle.forward()
                        turtle.turnLeft()
                    end
                end
            end

            rz = rz + 1
            
            end
        if rz % 2 == 0 then
            turtle.digDown()
            turtle.down()
            turtle.turnLeft()
            turtle.dig()
            turtle.forward()
            turtle.turnRight()
            rrx = 1
            while rrx < x do
                turtle.dig()
                turtle.forward()
                rrx = rrx + 1
            end
            turtle.turnRight()
            turtle.turnRight()
            ry = ry + 1
        elseif rz % 2 ~= 0 then
            turtle.digDown()
            turtle.down()
            turtle.turnRight()
            turtle.dig()
            turtle.forward()
            turtle.turnLeft()
            ry = ry + 1
        end
    end
end


hight()
