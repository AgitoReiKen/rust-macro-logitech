-- Rust Macro Pack
-- Controls:
EnablePrimaryMouseButtonEvents(true);
Activate = 5
Switch = 6
XMult = 1.0;
YMult = 1.0;
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

function IsFiring()
        return IsMouseButtonPressed(1)
end

function MMR(x, y, sleepAfter)
        MoveMouseRelative(round(x * XMult), round(y * YMult))
        Sleep(sleepAfter)
end

function AK()
        while IsMouseButtonPressed(1) do
                MMR(-4, 5, 1)
                if not IsFiring() then break end
                MMR(-2, 3, 1)
                if not IsFiring() then break end
                MMR(-4, 6, 1)
                if not IsFiring() then break end
                MMR(-3, 4, 1)
                if not IsFiring() then break end
                MMR(-3, 5, 1)
                if not IsFiring() then break end
                MMR(-4, 5, 1)
                if not IsFiring() then break end
                MMR(-2, 4, 1)
                if not IsFiring() then break end
                MMR(0, 2, 1)
                if not IsFiring() then break end
                MMR(0, 4, 1)
                if not IsFiring() then break end
                MMR(0, 6, 1)
                if not IsFiring() then break end
                MMR(1, 5, 1)
                break
                if not IsFiring() then break end
                MMR(1, 6, 1)
                if not IsFiring() then break end
                MMR(0, 7, 1)
                if not IsFiring() then break end
                MMR(0, 5, 3)
                if not IsFiring() then break end
                MMR(-2, 1, 3)
                if not IsFiring() then break end
                MMR(-3, 3, 1)
                if not IsFiring() then break end
                MMR(-5, 4, 1)
                if not IsFiring() then break end
                MMR(-5, 4, 1)
                if not IsFiring() then break end
                MMR(-4, 2, 1)
                if not IsFiring() then break end
                MMR(-5, 4, 1)
                if not IsFiring() then break end
                MMR(-5, 4, 1)
                if not IsFiring() then break end
                MMR(-4, 3, 1)
                if not IsFiring() then break end
                MMR(-4, 3, 1)
                if not IsFiring() then break end
                MMR(-6, 5, 1)
                if not IsFiring() then break end
                MMR(-5, 4, 1)
                if not IsFiring() then break end
                MMR(-3, 3, 1)
                if not IsFiring() then break end
                MMR(-5, 4, 1)
                if not IsFiring() then break end
                MMR(-3, 3, 1)
                if not IsFiring() then break end
                MMR(-5, 4, 1)
                if not IsFiring() then break end
                MMR(-5, 5, 1)
                if not IsFiring() then break end
                MMR(-2, 1, 1)
                if not IsFiring() then break end
                MMR(0, 5, 1)
                if not IsFiring() then break end
                MMR(0, 7, 1)
                if not IsFiring() then break end
                MMR(0, 4, 1)
                if not IsFiring() then break end
                MMR(0, 7, 1)
                if not IsFiring() then break end
                MMR(0, 4, 5)
                if not IsFiring() then break end
                MMR(1, 2, 5)
                if not IsFiring() then break end
                MMR(4, 6, 1)
                if not IsFiring() then break end
                MMR(2, 3, 1)
                if not IsFiring() then break end
                MMR(3, 6, 1)
                if not IsFiring() then break end
                MMR(3, 4, 5)
                if not IsFiring() then break end
                MMR(6, 4, 5)
                if not IsFiring() then break end
                MMR(5, 4, 1)
                if not IsFiring() then break end
                MMR(3, 3, 1)
                if not IsFiring() then break end
                MMR(5, 4, 1)
                if not IsFiring() then break end
                MMR(3, 2, 4)
                if not IsFiring() then break end
                MMR(2, 1, 4)
                if not IsFiring() then break end
                MMR(6, 3, 1)
                if not IsFiring() then break end
                MMR(4, 2, 1)
                if not IsFiring() then break end
                MMR(6, 3, 1)
                if not IsFiring() then break end
                MMR(4, 2, 1)
                if not IsFiring() then break end
                MMR(4, 2, 1)
                if not IsFiring() then break end
                MMR(2, 1, 3)
                if not IsFiring() then break end
                MMR(5, 2, 3)
                if not IsFiring() then break end
                MMR(6, 2, 1)
                if not IsFiring() then break end
                MMR(5, 1, 1)
                if not IsFiring() then break end
                MMR(6, 2, 1)
                if not IsFiring() then break end
                MMR(6, 3, 1)
                if not IsFiring() then break end
                MMR(4, 1, 3)
                if not IsFiring() then break end
                MMR(2, 0, 3)
                if not IsFiring() then break end
                MMR(5, 1, 1)
                if not IsFiring() then break end
                MMR(6, 2, 1)
                if not IsFiring() then break end
                MMR(4, 0, 1)
                if not IsFiring() then break end
                MMR(6, 2, 1)
                if not IsFiring() then break end
                MMR(6, 1, 1)
                if not IsFiring() then break end
                MMR(2, 1, 3)
                if not IsFiring() then break end
                MMR(3, 0, 3)
                if not IsFiring() then break end
                MMR(7, 2, 1)
                if not IsFiring() then break end
                MMR(4, 1, 1)
                if not IsFiring() then break end
                MMR(6, 2, 1)
                if not IsFiring() then break end
                MMR(6, 2, 1)
                if not IsFiring() then break end
                MMR(2, 1, 3)
                if not IsFiring() then break end
                MMR(2, 1, 3)
                if not IsFiring() then break end
                MMR(4, 2, 1)
                if not IsFiring() then break end
                MMR(5, 4, 1)
                if not IsFiring() then break end
                MMR(6, 3, 1)
                if not IsFiring() then break end
                MMR(3, 2, 1)
                if not IsFiring() then break end
                MMR(1, 2, 4)
                if not IsFiring() then break end
                MMR(3, 4, 4)
                if not IsFiring() then break end
                MMR(3, 3, 1)
                if not IsFiring() then break end
                MMR(3, 6, 1)
                if not IsFiring() then break end
                MMR(3, 3, 1)
                if not IsFiring() then break end
                MMR(0, 3, 5)
                if not IsFiring() then break end
                MMR(0, 5, 5)
                if not IsFiring() then break end
                MMR(0, 6, 1)
                if not IsFiring() then break end
                MMR(1, 6, 1)
                if not IsFiring() then break end
                MMR(0, 5, 5)
                if not IsFiring() then break end
                MMR(-2, 4, 5)
                if not IsFiring() then break end
                MMR(-2, 4, 1)
                if not IsFiring() then break end
                MMR(-3, 6, 1)
                if not IsFiring() then break end
                MMR(-2, 5, 1)
                if not IsFiring() then break end
                MMR(-3, 5, 5)
                if not IsFiring() then break end
                MMR(-4, 5, 5)
                if not IsFiring() then break end
                MMR(-3, 3, 1)
                if not IsFiring() then break end
                MMR(-4, 5, 1)
                if not IsFiring() then break end
                MMR(-4, 5, 1)
                if not IsFiring() then break end
                MMR(-3, 3, 1)
                if not IsFiring() then break end
                MMR(-2, 3, 3)
                if not IsFiring() then break end
                MMR(-2, 2, 3)
                if not IsFiring() then break end
                MMR(-6, 4, 1)
                if not IsFiring() then break end
                MMR(-5, 4, 1)
                if not IsFiring() then break end
                MMR(-3, 3, 1)
                if not IsFiring() then break end
                MMR(-5, 5, 1)
                if not IsFiring() then break end
                MMR(-3, 3, 1)
                if not IsFiring() then break end
                MMR(-4, 3, 2)
                if not IsFiring() then break end
                MMR(-2, 1, 2)
                if not IsFiring() then break end
                MMR(-4, 3, 1)
                if not IsFiring() then break end
                MMR(-5, 3, 1)
                if not IsFiring() then break end
                MMR(-4, 3, 1)
                if not IsFiring() then break end
                MMR(-5, 3, 1)
                if not IsFiring() then break end
                MMR(-4, 3, 1)
                if not IsFiring() then break end
                MMR(-5, 4, 1)
                if not IsFiring() then break end
                MMR(-3, 1, 2)
                if not IsFiring() then break end
                MMR(-2, 1, 2)
                if not IsFiring() then break end
                MMR(-4, 2, 1)
                if not IsFiring() then break end
                MMR(-6, 4, 1)
                if not IsFiring() then break end
                MMR(-4, 2, 1)
                if not IsFiring() then break end
                MMR(-6, 3, 1)
                if not IsFiring() then break end
                MMR(-6, 3, 1)
                if not IsFiring() then break end
                MMR(-3, 2, 1)
                if not IsFiring() then break end
                MMR(-3, 1, 2)
                if not IsFiring() then break end
                MMR(-5, 2, 2)
                if not IsFiring() then break end
                MMR(-4, 1, 1)
                if not IsFiring() then break end
                MMR(-6, 3, 1)
                if not IsFiring() then break end
                MMR(-6, 2, 1)
                if not IsFiring() then break end
                MMR(-4, 1, 1)
                if not IsFiring() then break end
                MMR(-6, 3, 1)
                if not IsFiring() then break end
                MMR(-3, 0, 3)
                if not IsFiring() then break end
                MMR(-7, 2, 3)
                if not IsFiring() then break end
                MMR(-5, 1, 1)
                if not IsFiring() then break end
                MMR(-6, 1, 1)
                if not IsFiring() then break end
                MMR(-4, 1, 1)
                if not IsFiring() then break end
                MMR(-7, 1, 1)
                if not IsFiring() then break end
                MMR(-2, 1, 3)
                if not IsFiring() then break end
                MMR(-5, 0, 3)
                if not IsFiring() then break end
                MMR(-6, 1, 1)
                if not IsFiring() then break end
                MMR(-4, 1, 1)
                if not IsFiring() then break end
                MMR(-7, 1, 1)
                if not IsFiring() then break end
                MMR(-4, 1, 5)
                if not IsFiring() then break end
                MMR(-6, 4, 5)
                if not IsFiring() then break end
                MMR(-4, 2, 1)
                if not IsFiring() then break end
                MMR(-6, 3, 1)
                if not IsFiring() then break end
                MMR(-1, 2, 5)
                if not IsFiring() then break end
                MMR(-1, 2, 5)
                if not IsFiring() then break end
                MMR(-3, 4, 1)
                if not IsFiring() then break end
                MMR(-3, 6, 1)
                if not IsFiring() then break end
                MMR(-1, 4, 6)
                if not IsFiring() then break end
                MMR(3, 6, 6)
                if not IsFiring() then break end
                MMR(2, 4, 1)
                if not IsFiring() then break end
                MMR(3, 6, 1)
                if not IsFiring() then break end
                MMR(2, 2, 5)
                if not IsFiring() then break end
                MMR(2, 2, 5)
                if not IsFiring() then break end
                MMR(5, 4, 1)
                if not IsFiring() then break end
                MMR(4, 3, 1)
                if not IsFiring() then break end
                MMR(3, 2, 1)
                if not IsFiring() then break end
                MMR(6, 4, 1)
                if not IsFiring() then break end
                MMR(5, 4, 1)
                if not IsFiring() then break end
                MMR(2, 2, 3)
                if not IsFiring() then break end
                MMR(4, 2, 3)
                if not IsFiring() then break end
                MMR(6, 4, 1)
                if not IsFiring() then break end
                MMR(6, 3, 1)
                if not IsFiring() then break end
                MMR(4, 2, 1)
                if not IsFiring() then break end
                MMR(5, 3, 1)
                if not IsFiring() then break end
                MMR(6, 4, 1)
                if not IsFiring() then break end
                MMR(3, 1, 1)
                if not IsFiring() then break end
                MMR(2, 1, 1)
                if not IsFiring() then break end
                MMR(3, 2, 1)
                if not IsFiring() then break end
                MMR(5, 3, 1)
                if not IsFiring() then break end
                MMR(4, 2, 1)
                if not IsFiring() then break end
                MMR(6, 3, 1)
                if not IsFiring() then break end
                MMR(4, 2, 1)
                if not IsFiring() then break end
                MMR(6, 3, 1)
                if not IsFiring() then break end
                MMR(5, 3, 1)
                if not IsFiring() then break end
                MMR(4, 2, 2)
                if not IsFiring() then break end
                MMR(4, 2, 2)
                if not IsFiring() then break end
                MMR(6, 3, 1)
                if not IsFiring() then break end
                MMR(5, 3, 1)
                if not IsFiring() then break end
                MMR(4, 3, 1)
                if not IsFiring() then break end
                MMR(6, 3, 1)
                if not IsFiring() then break end
                MMR(1, -1, 4)
                if not IsFiring() then break end
                MMR(0, -7, 4)
                if not IsFiring() then break end
                MMR(0, -4, 1)
                if not IsFiring() then break end
                MMR(1, -6, 1)
                if not IsFiring() then break end
                MMR(0, -7, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -4, 1)
                if not IsFiring() then break end
                MMR(0, -7, 1)
                if not IsFiring() then break end
                MMR(0, -7, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -4, 1)
                if not IsFiring() then break end
                MMR(1, -7, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -4, 1)
                if not IsFiring() then break end
                MMR(0, -7, 1)
                if not IsFiring() then break end
                MMR(0, -4, 1)
                if not IsFiring() then break end
                MMR(0, -7, 1)
                if not IsFiring() then break end
                MMR(0, -4, 26)
                if not IsFiring() then break end
                break
        end
end

function SMG()
        while IsMouseButtonPressed(1) do
                MMR(-3, 5, 1)
                if not IsFiring() then break end
                MMR(-3, 6, 1)
                if not IsFiring() then break end
                MMR(-2, 5, 1)
                if not IsFiring() then break end
                MMR(-2, 4, 3)
                if not IsFiring() then break end
                MMR(-2, 7, 3)
                if not IsFiring() then break end
                MMR(-1, 5, 1)
                if not IsFiring() then break end
                MMR(-1, 6, 1)
                if not IsFiring() then break end
                MMR(-1, 5, 1)
                if not IsFiring() then break end
                MMR(0, 1, 2)
                if not IsFiring() then break end
                MMR(-1, 5, 2)
                if not IsFiring() then break end
                MMR(0, 5, 1)
                if not IsFiring() then break end
                MMR(0, 4, 1)
                if not IsFiring() then break end
                MMR(0, 8, 1)
                if not IsFiring() then break end
                MMR(0, 2, 2)
                if not IsFiring() then break end
                MMR(0, 2, 2)
                if not IsFiring() then break end
                MMR(2, 6, 1)
                if not IsFiring() then break end
                MMR(1, 6, 1)
                if not IsFiring() then break end
                MMR(1, 3, 1)
                if not IsFiring() then break end
                MMR(1, 5, 3)
                if not IsFiring() then break end
                MMR(3, 6, 3)
                if not IsFiring() then break end
                MMR(2, 5, 1)
                if not IsFiring() then break end
                MMR(3, 6, 1)
                if not IsFiring() then break end
                MMR(2, 4, 3)
                if not IsFiring() then break end
                MMR(1, 2, 3)
                if not IsFiring() then break end
                MMR(2, 5, 1)
                if not IsFiring() then break end
                MMR(3, 5, 1)
                if not IsFiring() then break end
                MMR(3, 5, 1)
                if not IsFiring() then break end
                MMR(1, 1, 2)
                if not IsFiring() then break end
                MMR(1, 2, 2)
                if not IsFiring() then break end
                MMR(1, 4, 1)
                if not IsFiring() then break end
                MMR(3, 5, 1)
                if not IsFiring() then break end
                MMR(2, 4, 1)
                if not IsFiring() then break end
                MMR(0, 2, 3)
                if not IsFiring() then break end
                MMR(1, 2, 3)
                if not IsFiring() then break end
                MMR(2, 8, 1)
                if not IsFiring() then break end
                MMR(1, 2, 1)
                if not IsFiring() then break end
                MMR(0, 2, 3)
                if not IsFiring() then break end
                MMR(0, 2, 3)
                if not IsFiring() then break end
                MMR(-1, 4, 1)
                if not IsFiring() then break end
                MMR(-1, 4, 1)
                if not IsFiring() then break end
                MMR(-1, 2, 4)
                if not IsFiring() then break end
                MMR(-3, 4, 4)
                if not IsFiring() then break end
                MMR(-3, 5, 1)
                if not IsFiring() then break end
                MMR(-2, 2, 4)
                if not IsFiring() then break end
                MMR(-2, 2, 4)
                if not IsFiring() then break end
                MMR(-4, 4, 1)
                if not IsFiring() then break end
                MMR(-3, 3, 1)
                if not IsFiring() then break end
                MMR(-1, 2, 4)
                if not IsFiring() then break end
                MMR(-5, 5, 4)
                if not IsFiring() then break end
                MMR(-3, 3, 1)
                if not IsFiring() then break end
                MMR(-1, 2, 4)
                if not IsFiring() then break end
                MMR(-3, 3, 4)
                if not IsFiring() then break end
                MMR(-2, 4, 1)
                if not IsFiring() then break end
                MMR(0, 1, 5)
                if not IsFiring() then break end
                MMR(0, 6, 5)
                if not IsFiring() then break end
                MMR(0, 2, 5)
                if not IsFiring() then break end
                MMR(3, 3, 5)
                if not IsFiring() then break end
                MMR(3, 4, 5)
                if not IsFiring() then break end
                MMR(2, 1, 5)
                if not IsFiring() then break end
                MMR(3, 3, 1)
                if not IsFiring() then break end
                MMR(4, 2, 5)
                if not IsFiring() then break end
                MMR(4, 3, 5)
                if not IsFiring() then break end
                MMR(3, 2, 1)
                if not IsFiring() then break end
                MMR(2, 1, 4)
                if not IsFiring() then break end
                MMR(2, 2, 4)
                if not IsFiring() then break end
                MMR(4, 3, 1)
                if not IsFiring() then break end
                MMR(2, 1, 5)
                if not IsFiring() then break end
                MMR(3, 4, 5)
                if not IsFiring() then break end
                MMR(0, 2, 5)
                if not IsFiring() then break end
                MMR(0, 3, 5)
                if not IsFiring() then break end
                MMR(-2, 1, 6)
                if not IsFiring() then break end
                MMR(-2, 3, 6)
                if not IsFiring() then break end
                MMR(-2, 2, 5)
                if not IsFiring() then break end
                MMR(-2, 1, 5)
                if not IsFiring() then break end
                MMR(-2, 2, 1)
                if not IsFiring() then break end
                MMR(-1, 1, 5)
                if not IsFiring() then break end
                MMR(-4, 4, 5)
                if not IsFiring() then break end
                MMR(0, -1, 5)
                if not IsFiring() then break end
                MMR(0, -3, 5)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -4, 1)
                if not IsFiring() then break end
                MMR(0, -7, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -4, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -7, 1)
                if not IsFiring() then break end
                MMR(0, -6, 25)
                if not IsFiring() then break end

                break
        end
end

function Thompson()
        while IsMouseButtonPressed(1) do
                MMR(-2, 4, 1)
                if not IsFiring() then break end
                MMR(-3, 7, 1)
                if not IsFiring() then break end
                MMR(-2, 3, 1)
                if not IsFiring() then break end
                MMR(-3, 7, 1)
                if not IsFiring() then break end
                MMR(-1, 2, 3)
                if not IsFiring() then break end
                MMR(0, 2, 3)
                if not IsFiring() then break end
                MMR(-1, 6, 1)
                if not IsFiring() then break end
                MMR(-1, 6, 1)
                if not IsFiring() then break end
                MMR(-1, 6, 1)
                if not IsFiring() then break end
                MMR(-1, 5, 1)
                if not IsFiring() then break end
                MMR(0, 4, 4)
                if not IsFiring() then break end
                MMR(0, 6, 4)
                if not IsFiring() then break end
                MMR(0, 6, 1)
                if not IsFiring() then break end
                MMR(1, 6, 1)
                if not IsFiring() then break end
                MMR(1, 6, 1)
                if not IsFiring() then break end
                MMR(1, 3, 4)
                if not IsFiring() then break end
                MMR(1, 4, 4)
                if not IsFiring() then break end
                MMR(2, 4, 1)
                if not IsFiring() then break end
                MMR(2, 7, 1)
                if not IsFiring() then break end
                MMR(2, 4, 1)
                if not IsFiring() then break end
                MMR(2, 5, 1)
                if not IsFiring() then break end
                MMR(1, 1, 3)
                if not IsFiring() then break end
                MMR(1, 2, 3)
                if not IsFiring() then break end
                MMR(2, 6, 1)
                if not IsFiring() then break end
                MMR(3, 5, 1)
                if not IsFiring() then break end
                MMR(3, 5, 1)
                if not IsFiring() then break end
                MMR(2, 5, 5)
                if not IsFiring() then break end
                MMR(3, 6, 5)
                if not IsFiring() then break end
                MMR(3, 5, 1)
                if not IsFiring() then break end
                MMR(3, 5, 1)
                if not IsFiring() then break end
                MMR(0, 3, 5)
                if not IsFiring() then break end
                MMR(1, 5, 5)
                if not IsFiring() then break end
                MMR(1, 4, 1)
                if not IsFiring() then break end
                MMR(0, 5, 1)
                if not IsFiring() then break end
                MMR(0, 3, 6)
                if not IsFiring() then break end
                MMR(-2, 5, 6)
                if not IsFiring() then break end
                MMR(-3, 6, 1)
                if not IsFiring() then break end
                MMR(-1, 3, 6)
                if not IsFiring() then break end
                MMR(-5, 5, 6)
                if not IsFiring() then break end
                MMR(-3, 3, 1)
                if not IsFiring() then break end
                MMR(-3, 3, 1)
                if not IsFiring() then break end
                MMR(-1, 2, 5)
                if not IsFiring() then break end
                MMR(-2, 1, 5)
                if not IsFiring() then break end
                MMR(-4, 5, 1)
                if not IsFiring() then break end
                MMR(-4, 4, 1)
                if not IsFiring() then break end
                MMR(-1, 2, 6)
                if not IsFiring() then break end
                MMR(-3, 3, 6)
                if not IsFiring() then break end
                MMR(-3, 5, 1)
                if not IsFiring() then break end
                MMR(0, 2, 6)
                if not IsFiring() then break end
                MMR(1, 4, 6)
                if not IsFiring() then break end
                MMR(2, 5, 7)
                if not IsFiring() then break end
                MMR(2, 1, 7)
                if not IsFiring() then break end
                MMR(4, 4, 1)
                if not IsFiring() then break end
                MMR(3, 3, 7)
                if not IsFiring() then break end
                MMR(5, 3, 7)
                if not IsFiring() then break end
                MMR(4, 2, 1)
                if not IsFiring() then break end
                MMR(2, 2, 6)
                if not IsFiring() then break end
                MMR(4, 3, 6)
                if not IsFiring() then break end
                MMR(4, 3, 1)
                if not IsFiring() then break end
                MMR(2, 1, 6)
                if not IsFiring() then break end
                MMR(1, 2, 6)
                if not IsFiring() then break end
                MMR(2, 5, 8)
                if not IsFiring() then break end
                MMR(-2, 4, 8)
                if not IsFiring() then break end
                MMR(-1, 1, 7)
                if not IsFiring() then break end
                MMR(-2, 1, 7)
                if not IsFiring() then break end
                MMR(-4, 5, 8)
                if not IsFiring() then break end
                MMR(-5, 4, 8)
                if not IsFiring() then break end
                MMR(0, -1, 7)
                if not IsFiring() then break end
                MMR(0, -5, 7)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -5, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -5, 1)
                if not IsFiring() then break end
                MMR(0, -7, 1)
                if not IsFiring() then break end
                MMR(0, -5, 1)
                if not IsFiring() then break end
                MMR(-1, -7, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -5, 1)
                if not IsFiring() then break end
                MMR(0, -4, 1)
                if not IsFiring() then break end
                MMR(0, -8, 1)
                if not IsFiring() then break end
                MMR(0, -4, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -4, 20)
                if not IsFiring() then break end

                break
        end
end

function MP5()
        while IsMouseButtonPressed(1) do
                MMR(0, 4, 1)
                if not IsFiring() then break end
                MMR(0, 6, 1)
                if not IsFiring() then break end
                MMR(0, 1, 4)
                if not IsFiring() then break end
                MMR(0, 6, 4)
                if not IsFiring() then break end
                MMR(0, 6, 1)
                if not IsFiring() then break end
                MMR(0, 6, 1)
                if not IsFiring() then break end
                MMR(0, 4, 3)
                if not IsFiring() then break end
                MMR(0, 2, 3)
                if not IsFiring() then break end
                MMR(0, 6, 1)
                if not IsFiring() then break end
                MMR(0, 6, 1)
                if not IsFiring() then break end
                MMR(0, 6, 1)
                if not IsFiring() then break end
                MMR(0, 5, 3)
                if not IsFiring() then break end
                MMR(2, 5, 3)
                if not IsFiring() then break end
                MMR(3, 6, 1)
                if not IsFiring() then break end
                MMR(2, 6, 1)
                if not IsFiring() then break end
                MMR(2, 5, 1)
                if not IsFiring() then break end
                MMR(1, 2, 2)
                if not IsFiring() then break end
                MMR(2, 2, 2)
                if not IsFiring() then break end
                MMR(4, 4, 1)
                if not IsFiring() then break end
                MMR(4, 4, 1)
                if not IsFiring() then break end
                MMR(5, 4, 1)
                if not IsFiring() then break end
                MMR(4, 5, 1)
                if not IsFiring() then break end
                MMR(3, 3, 1)
                if not IsFiring() then break end
                MMR(2, 1, 1)
                if not IsFiring() then break end
                MMR(4, 2, 1)
                if not IsFiring() then break end
                MMR(6, 5, 1)
                if not IsFiring() then break end
                MMR(3, 2, 1)
                if not IsFiring() then break end
                MMR(5, 3, 1)
                if not IsFiring() then break end
                MMR(5, 3, 2)
                if not IsFiring() then break end
                MMR(4, 2, 2)
                if not IsFiring() then break end
                MMR(5, 3, 1)
                if not IsFiring() then break end
                MMR(5, 3, 1)
                if not IsFiring() then break end
                MMR(1, 3, 3)
                if not IsFiring() then break end
                MMR(0, 2, 3)
                if not IsFiring() then break end
                MMR(0, 5, 6)
                if not IsFiring() then break end
                MMR(-4, 2, 6)
                if not IsFiring() then break end
                MMR(-5, 3, 1)
                if not IsFiring() then break end
                MMR(-5, 2, 4)
                if not IsFiring() then break end
                MMR(-4, 1, 4)
                if not IsFiring() then break end
                MMR(-4, 1, 1)
                if not IsFiring() then break end
                MMR(-5, 2, 1)
                if not IsFiring() then break end
                MMR(-5, 2, 4)
                if not IsFiring() then break end
                MMR(-4, 2, 4)
                if not IsFiring() then break end
                MMR(-6, 2, 1)
                if not IsFiring() then break end
                MMR(-4, 3, 4)
                if not IsFiring() then break end
                MMR(-2, 3, 4)
                if not IsFiring() then break end
                MMR(1, 1, 6)
                if not IsFiring() then break end
                MMR(4, 3, 6)
                if not IsFiring() then break end
                MMR(2, 1, 5)
                if not IsFiring() then break end
                MMR(4, 1, 5)
                if not IsFiring() then break end
                MMR(4, 1, 1)
                if not IsFiring() then break end
                MMR(2, 1, 5)
                if not IsFiring() then break end
                MMR(9, 2, 5)
                if not IsFiring() then break end
                MMR(2, 0, 1)
                if not IsFiring() then break end
                MMR(2, 1, 4)
                if not IsFiring() then break end
                MMR(4, 1, 4)
                if not IsFiring() then break end
                MMR(6, 1, 1)
                if not IsFiring() then break end
                MMR(2, 0, 5)
                if not IsFiring() then break end
                MMR(4, 1, 5)
                if not IsFiring() then break end
                MMR(5, 1, 5)
                if not IsFiring() then break end
                MMR(3, 1, 5)
                if not IsFiring() then break end
                MMR(0, 2, 5)
                if not IsFiring() then break end
                MMR(-2, 0, 11)
                if not IsFiring() then break end
                MMR(-4, 0, 12)
                if not IsFiring() then break end
                MMR(-2, 1, 6)
                if not IsFiring() then break end
                MMR(-4, 0, 6)
                if not IsFiring() then break end
                MMR(-5, 0, 6)
                if not IsFiring() then break end
                MMR(-3, 0, 5)
                if not IsFiring() then break end
                MMR(-3, 0, 5)
                if not IsFiring() then break end
                MMR(-5, 0, 1)
                if not IsFiring() then break end
                MMR(-1, 0, 5)
                if not IsFiring() then break end
                MMR(-7, 0, 5)
                if not IsFiring() then break end
                MMR(-3, 0, 5)
                if not IsFiring() then break end
                MMR(-3, 0, 5)
                if not IsFiring() then break end
                MMR(-4, 0, 1)
                if not IsFiring() then break end
                MMR(-3, 0, 5)
                if not IsFiring() then break end
                MMR(-5, 0, 5)
                if not IsFiring() then break end
                MMR(-5, 0, 5)
                if not IsFiring() then break end
                MMR(-2, 0, 5)
                if not IsFiring() then break end
                MMR(-6, 0, 6)
                if not IsFiring() then break end
                MMR(-5, 0, 6)
                if not IsFiring() then break end
                MMR(-1, 0, 5)
                if not IsFiring() then break end
                MMR(-3, 0, 5)
                if not IsFiring() then break end
                MMR(0, -2, 6)
                if not IsFiring() then break end
                MMR(0, -5, 6)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -7, 1)
                if not IsFiring() then break end
                MMR(0, -4, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -7, 1)
                if not IsFiring() then break end
                MMR(0, -4, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -4, 1)
                if not IsFiring() then break end
                MMR(-1, -6, 1)
                if not IsFiring() then break end
                MMR(0, -6, 26)
                if not IsFiring() then break end

                break
        end
end

function LR300()
        while IsMouseButtonPressed(1) do
                MMR(-1, 5, 1)
                if not IsFiring() then break end
                MMR(0, 5, 1)
                if not IsFiring() then break end
                MMR(-1, 3, 5)
                if not IsFiring() then break end
                MMR(-1, 6, 5)
                if not IsFiring() then break end
                MMR(-1, 4, 1)
                if not IsFiring() then break end
                MMR(-1, 6, 1)
                if not IsFiring() then break end
                MMR(-1, 5, 1)
                if not IsFiring() then break end
                MMR(0, 2, 3)
                if not IsFiring() then break end
                MMR(-1, 2, 3)
                if not IsFiring() then break end
                MMR(-2, 6, 1)
                if not IsFiring() then break end
                MMR(-1, 4, 1)
                if not IsFiring() then break end
                MMR(-2, 6, 1)
                if not IsFiring() then break end
                MMR(-1, 5, 1)
                if not IsFiring() then break end
                MMR(-1, 1, 3)
                if not IsFiring() then break end
                MMR(-1, 3, 3)
                if not IsFiring() then break end
                MMR(-3, 5, 1)
                if not IsFiring() then break end
                MMR(-2, 6, 1)
                if not IsFiring() then break end
                MMR(-3, 5, 1)
                if not IsFiring() then break end
                MMR(-1, 3, 1)
                if not IsFiring() then break end
                MMR(-1, 1, 3)
                if not IsFiring() then break end
                MMR(-2, 4, 3)
                if not IsFiring() then break end
                MMR(-4, 6, 1)
                if not IsFiring() then break end
                MMR(-3, 5, 1)
                if not IsFiring() then break end
                MMR(-2, 3, 1)
                if not IsFiring() then break end
                MMR(-1, 2, 3)
                if not IsFiring() then break end
                MMR(-1, 1, 3)
                if not IsFiring() then break end
                MMR(-4, 6, 1)
                if not IsFiring() then break end
                MMR(-2, 3, 1)
                if not IsFiring() then break end
                MMR(-2, 3, 1)
                if not IsFiring() then break end
                MMR(-1, 2, 4)
                if not IsFiring() then break end
                MMR(-1, 2, 4)
                if not IsFiring() then break end
                MMR(-2, 4, 1)
                if not IsFiring() then break end
                MMR(-3, 5, 1)
                if not IsFiring() then break end
                MMR(-1, 2, 5)
                if not IsFiring() then break end
                MMR(0, 5, 5)
                if not IsFiring() then break end
                MMR(-1, 4, 1)
                if not IsFiring() then break end
                MMR(0, 2, 6)
                if not IsFiring() then break end
                MMR(3, 4, 6)
                if not IsFiring() then break end
                MMR(2, 3, 1)
                if not IsFiring() then break end
                MMR(2, 2, 6)
                if not IsFiring() then break end
                MMR(6, 4, 6)
                if not IsFiring() then break end
                MMR(5, 3, 1)
                if not IsFiring() then break end
                MMR(2, 1, 5)
                if not IsFiring() then break end
                MMR(3, 1, 5)
                if not IsFiring() then break end
                MMR(6, 2, 1)
                if not IsFiring() then break end
                MMR(4, 2, 1)
                if not IsFiring() then break end
                MMR(2, 1, 5)
                if not IsFiring() then break end
                MMR(5, 2, 5)
                if not IsFiring() then break end
                MMR(6, 2, 1)
                if not IsFiring() then break end
                MMR(2, 2, 6)
                if not IsFiring() then break end
                MMR(5, 2, 6)
                if not IsFiring() then break end
                MMR(1, 3, 7)
                if not IsFiring() then break end
                MMR(-1, 3, 13)
                if not IsFiring() then break end
                MMR(-2, 1, 7)
                if not IsFiring() then break end
                MMR(-2, 2, 7)
                if not IsFiring() then break end
                MMR(-3, 1, 7)
                if not IsFiring() then break end
                MMR(-4, 1, 7)
                if not IsFiring() then break end
                MMR(-5, 2, 7)
                if not IsFiring() then break end
                MMR(-4, 1, 6)
                if not IsFiring() then break end
                MMR(-3, 1, 6)
                if not IsFiring() then break end
                MMR(-4, 1, 1)
                if not IsFiring() then break end
                MMR(-4, 0, 6)
                if not IsFiring() then break end
                MMR(-2, 1, 6)
                if not IsFiring() then break end
                MMR(-7, 1, 1)
                if not IsFiring() then break end
                MMR(-2, 1, 6)
                if not IsFiring() then break end
                MMR(-5, 0, 6)
                if not IsFiring() then break end
                MMR(-5, 1, 1)
                if not IsFiring() then break end
                MMR(-2, 1, 5)
                if not IsFiring() then break end
                MMR(-2, 0, 5)
                if not IsFiring() then break end
                MMR(-4, 1, 1)
                if not IsFiring() then break end
                MMR(-5, 1, 6)
                if not IsFiring() then break end
                MMR(-2, 0, 6)
                if not IsFiring() then break end
                MMR(-5, 1, 1)
                if not IsFiring() then break end
                MMR(-2, 0, 6)
                if not IsFiring() then break end
                MMR(-5, 2, 6)
                if not IsFiring() then break end
                MMR(-3, 1, 7)
                if not IsFiring() then break end
                MMR(-6, 2, 14)
                if not IsFiring() then break end
                MMR(0, 1, 15)
                if not IsFiring() then break end
                MMR(7, 2, 8)
                if not IsFiring() then break end
                MMR(3, 0, 6)
                if not IsFiring() then break end
                MMR(3, 0, 6)
                if not IsFiring() then break end
                MMR(7, 1, 1)
                if not IsFiring() then break end
                MMR(6, 0, 1)
                if not IsFiring() then break end
                MMR(5, 1, 1)
                if not IsFiring() then break end
                MMR(2, 0, 4)
                if not IsFiring() then break end
                MMR(5, 1, 4)
                if not IsFiring() then break end
                MMR(7, 0, 1)
                if not IsFiring() then break end
                MMR(4, 1, 1)
                if not IsFiring() then break end
                MMR(6, 0, 1)
                if not IsFiring() then break end
                MMR(5, 1, 4)
                if not IsFiring() then break end
                MMR(5, 0, 4)
                if not IsFiring() then break end
                MMR(6, 1, 1)
                if not IsFiring() then break end
                MMR(7, 1, 1)
                if not IsFiring() then break end
                MMR(2, -1, 4)
                if not IsFiring() then break end
                MMR(0, -3, 4)
                if not IsFiring() then break end
                MMR(1, -4, 1)
                if not IsFiring() then break end
                MMR(0, -7, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(1, -5, 1)
                if not IsFiring() then break end
                MMR(0, -4, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(0, -5, 1)
                if not IsFiring() then break end
                MMR(1, -9, 1)
                if not IsFiring() then break end
                MMR(0, -4, 1)
                if not IsFiring() then break end
                MMR(0, -7, 1)
                if not IsFiring() then break end
                MMR(0, -4, 1)
                if not IsFiring() then break end
                MMR(0, -6, 1)
                if not IsFiring() then break end
                MMR(1, -6, 1)
                if not IsFiring() then break end
                MMR(0, -6, 29)
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
