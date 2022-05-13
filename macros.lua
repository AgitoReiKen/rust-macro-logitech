-- Rust Macro Pack
-- Controls:
EnablePrimaryMouseButtonEvents(true);
Activate = 5
Switch = 6
XMult = 1.33;
YMult = 1.33;
recoil = false
Macro = 0
local PressedWheelTime = GetRunningTime();
local PressedMuzzleBoostTime = GetRunningTime();
local MuzzleBoostMult = 1.0;
function round(a)
    local flr = math.floor(a);
    local part = a - flr;
    if (part > 0.5) then
        return flr + 1;
    end
    return flr
end

function switch(t)
    t.case = function(self, x)
        local f = self[x] or self.default
        if f then
            if type(f) == "function" then
                f(x, self)
            else
                OutputLogMessage("case " .. tostring(x) .. " not a function")
            end
        end
    end
    return t
end

function AK()
    while IsMouseButtonPressed(1) do
        MoveMouseRelative(-4, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, 5)
        Sleep(1)
        break
        if not IsFiring() then break end
        MoveMouseRelative(1, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 5)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 1)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-6, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 4)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(1, 2)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(4, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 4)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(6, 4)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(5, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(5, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 2)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(2, 1)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(6, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 1)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(5, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(6, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(5, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 1)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(2, 0)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(5, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 0)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 1)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(3, 0)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(7, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 1)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(2, 1)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(4, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(5, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, 2)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(3, 4)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(3, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 3)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(0, 5)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(0, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 5)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 4)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 5)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 5)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 3)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-6, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 3)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 1)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 1)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 1)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-6, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-6, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-6, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 1)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 2)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-6, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-6, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-6, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 0)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-7, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-6, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-7, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 1)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 0)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-6, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-7, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-6, 4)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-6, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 2)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 2)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 4)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(3, 6)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(2, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 2)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(2, 2)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(5, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(5, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(4, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(6, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(5, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(5, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(5, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 2)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(4, 2)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(6, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(5, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, -1)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(0, -7)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(0, -4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, -7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -4)
        Sleep(26)
        if not IsFiring() then break end
        break
    end
end

function SMG()
    while IsMouseButtonPressed(1) do
        MoveMouseRelative(-3, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 4)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 7)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 1)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 5)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(0, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 8)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 2)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(0, 2)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(2, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, 5)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(3, 6)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(2, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 4)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(1, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(2, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, 1)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(1, 2)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(1, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(1, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(2, 8)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(0, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 2)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 4)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 2)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 2)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 2)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 5)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 2)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 3)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(0, 6)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(0, 2)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(3, 3)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(3, 4)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(2, 1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(3, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 2)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(4, 3)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(3, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 1)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(2, 2)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(4, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(3, 4)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(0, 2)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(0, 3)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 1)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 3)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 2)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 4)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(0, -1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(0, -3)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(25)
        if not IsFiring() then break end

        break
    end
end

function Thompson()
    while IsMouseButtonPressed(1) do
        MoveMouseRelative(-2, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(0, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 4)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(0, 6)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(0, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, 3)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(1, 4)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(2, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, 1)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(1, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(2, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 5)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(3, 6)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(3, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 3)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(1, 5)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(1, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 3)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 5)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 3)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 5)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 2)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 2)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 3)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 2)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(1, 4)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(2, 5)
        Sleep(7)
        if not IsFiring() then break end
        MoveMouseRelative(2, 1)
        Sleep(7)
        if not IsFiring() then break end
        MoveMouseRelative(4, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 3)
        Sleep(7)
        if not IsFiring() then break end
        MoveMouseRelative(5, 3)
        Sleep(7)
        if not IsFiring() then break end
        MoveMouseRelative(4, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 2)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(4, 3)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(4, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 1)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(1, 2)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(2, 5)
        Sleep(8)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 4)
        Sleep(8)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 1)
        Sleep(7)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 1)
        Sleep(7)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 5)
        Sleep(8)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 4)
        Sleep(8)
        if not IsFiring() then break end
        MoveMouseRelative(0, -1)
        Sleep(7)
        if not IsFiring() then break end
        MoveMouseRelative(0, -5)
        Sleep(7)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, -7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -8)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -4)
        Sleep(20)
        if not IsFiring() then break end

        break
    end
end

function MP5()
    while IsMouseButtonPressed(1) do
        MoveMouseRelative(0, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 1)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(0, 6)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(0, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 4)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(0, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(0, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 5)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(2, 5)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(3, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, 2)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(2, 2)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(4, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(5, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(3, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(5, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(5, 3)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(4, 2)
        Sleep(2)
        if not IsFiring() then break end
        MoveMouseRelative(5, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(5, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, 3)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(0, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(0, 5)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 2)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 2)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 1)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 2)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 2)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(-6, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 3)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 3)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(1, 1)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(4, 3)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(2, 1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(4, 1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(4, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(9, 2)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(2, 0)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 1)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(4, 1)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(6, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 0)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(4, 1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(5, 1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(3, 1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(0, 2)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 0)
        Sleep(11)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 0)
        Sleep(12)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 1)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 0)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 0)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 0)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 0)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 0)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 0)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-7, 0)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 0)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 0)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 0)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 0)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 0)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 0)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 0)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-6, 0)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 0)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 0)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 0)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(0, -2)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(0, -5)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(26)
        if not IsFiring() then break end

        break
    end
end

function LR300()
    while IsMouseButtonPressed(1) do
        MoveMouseRelative(-1, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 3)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 6)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 1)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 3)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 1)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 4)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 2)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 1)
        Sleep(3)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 2)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 2)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 2)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(0, 5)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, 2)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(3, 4)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(2, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 2)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(6, 4)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(5, 3)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(3, 1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(6, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(5, 2)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(6, 2)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 2)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(5, 2)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(1, 3)
        Sleep(7)
        if not IsFiring() then break end
        MoveMouseRelative(-1, 3)
        Sleep(13)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 1)
        Sleep(7)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 2)
        Sleep(7)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 1)
        Sleep(7)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 1)
        Sleep(7)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 2)
        Sleep(7)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 1)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 1)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 0)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 1)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-7, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 1)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 0)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 1)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 0)
        Sleep(5)
        if not IsFiring() then break end
        MoveMouseRelative(-4, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 1)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 0)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(-2, 0)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-5, 2)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(-3, 1)
        Sleep(7)
        if not IsFiring() then break end
        MoveMouseRelative(-6, 2)
        Sleep(14)
        if not IsFiring() then break end
        MoveMouseRelative(0, 1)
        Sleep(15)
        if not IsFiring() then break end
        MoveMouseRelative(7, 2)
        Sleep(8)
        if not IsFiring() then break end
        MoveMouseRelative(3, 0)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(3, 0)
        Sleep(6)
        if not IsFiring() then break end
        MoveMouseRelative(7, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 0)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(5, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, 0)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(5, 1)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(7, 0)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(4, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(6, 0)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(5, 1)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(5, 0)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(6, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(7, 1)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(2, -1)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(0, -3)
        Sleep(4)
        if not IsFiring() then break end
        MoveMouseRelative(1, -4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, -5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -5)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, -9)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -7)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -4)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(1, -6)
        Sleep(1)
        if not IsFiring() then break end
        MoveMouseRelative(0, -6)
        Sleep(29)
        if not IsFiring() then break end

        break
    end
end

function OnEvent(event, arg)
    if (event == "MOUSE_BUTTON_PRESSED" and arg == Activate) then
        recoil = not recoil
        if (recoil == false) then
            OutputLogMessage("Anti-Recoil DISABLED\n")
        else
            OutputLogMessage("Anti-Recoil ENABLED\n")
        end
    end
    if (event == "MOUSE_BUTTON_PRESSED" and arg == Switch) then
        Macro = (Macro + 1) % 5
        if (Macro == 0) then
            OutputLogMessage("AK\n\r")
        elseif (Macro == 1) then
            OutputLogMessage("SMG\n\r")
        elseif (Macro == 2) then
            OutputLogMessage("Thompson\n\r")
        elseif (Macro == 3) then
            OutputLogMessage("MP5\n\r")
        elseif (Macro == 4) then
            OutputLogMessage("LR300\n\r")
        end
    end
    macroSwitcher = switch {
        [0] = AK,
        [1] = SMG,
        [2] = Thompson,
        [3] = MP5,
        [4] = LR300
    }
    if IsMouseButtonPressed(1) and recoil then
        macroSwitcher:case(Macro)
    end
end
