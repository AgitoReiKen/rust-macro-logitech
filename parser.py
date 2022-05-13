import array
from typing import Dict


MoveMouseRelative = "MoveMouseRelative"
Sleep = "Sleep"
def updateMMROld(x):
    
    keyword = "MoveMouseRelative"
    keywordBegin = x.find(keyword)
    keywordEnd =  keywordBegin + len(keyword) + 1
    delimIndex = x.find(',' , keywordEnd) # MoveMouseRelative(
    firstValue = x[keywordEnd:delimIndex]
    closerIndex = x.find(')', delimIndex)
    secondValue = x[delimIndex+1:closerIndex]
    firstValue = f'round(({firstValue}) * XMult)'
    secondValue = f'round(({secondValue}) * YMult)'
    newLine = f'{keyword}({firstValue}, {secondValue})\n'
    return newLine

buffer: list[list[str]] = []
with open('./macros.lua') as f: 
    with open('./new.lua', 'w') as w:
        macrosParsed = f.readlines()
        for x in macrosParsed:
            if x.find(MoveMouseRelative) != -1:
                #MoveMouseRelative(-4,5)
                #Sleep(1)
                #if not IsMouseButtonPressed(1) then break end
                keywordBegin = x.find(MoveMouseRelative)
                keywordEnd =  keywordBegin + len(MoveMouseRelative) + 1
                delimIndex = x.find(',' , keywordEnd) # MoveMouseRelative(
                firstValue = x[keywordEnd:delimIndex]
                closerIndex = x.find(')', delimIndex)
                secondValue = x[delimIndex+1:closerIndex]
                buffer.append([firstValue, secondValue])
            elif x.find(Sleep) != -1:
                keywordBegin = x.find(Sleep)
                value = x[keywordBegin + len(Sleep) + 1: x.find(")", keywordBegin)]
                id = len(buffer)-1
                x = buffer[id][0]
                y = buffer[id][1]
                
                newLine = f'MMR({x}, {y}, {value})\n'
                w.write(newLine)
            else:
                w.write(x)