from cmath import inf


entry = "LR-300 pro"

buffer: list[list[str]] = []
with open(f'./amc_files/{entry}.amc', encoding='utf8') as f: 
    with open(f'./converted/{entry}.lua', 'w', encoding='utf8') as w:
        macrosParsed = f.readlines()
        MoveR = "MoveR"
        Delay = "Delay"
        Canceler = "if IsNotFiring() then break end\n"
        for x in macrosParsed:
            if x.find(MoveR) != -1:
                 #if not IsMouseButtonPressed(1) then break end
                splitted = x.split(' ')
                buffer.append([splitted[1], splitted[2].replace("\n", "")])
            elif x.find(Delay) != -1:
                if len(buffer) == 0:
                    value = x.split(' ')[1]
                    w.write(f'MMR(0, 0, {value})\n{Canceler}')
                else:
                    value = x.split(' ')[1]
                    id = len(buffer)-1
                    X = buffer[id][0]
                    Y = buffer[id][1]
                    
                    newLine = f'MMR({X}, {Y}, {value})\n{Canceler}'
                    w.write(newLine)

                
