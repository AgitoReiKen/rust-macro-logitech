EnablePrimaryMouseButtonEvents(true)

--------- Settings
Sens = 0.5
FOV = 75
--------- Bindings
Activate = 5
SightSwitch = 7
AttachmentSwitch = 8
MuzzleBoostSwitch = 9
Switch = 6

---------- Mods
MP5ExtraModifier = 1.001
HoloModifier = 1.2
HoloWithSilencerModifier = 1.25
SilencerModifier = 0.8
xEightModifier = 3.75
xEightWithSilencerModifier = 4.45
---------- Internals

Enabled = false
Macro = 0
BaseSens = 0
BaseFOV = 0
SightModifier = 1.0
MuzzleBoostModifier = 1.0
MuzzleBoostModifierActive = 0.92
AttachmentModifier = 1.0
-------------------

---------- Utils
function round(num)
    if num >= 0 then
        return math.floor(num + .5)
    else
        return math.ceil(num - .5)
    end
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

function IsNotFiring()
    return not IsMouseButtonPressed(1)
end

do
    local function busyloop(final_ctr)
        final_ctr = final_ctr - final_ctr % 1
        local ctr, prev_ms, ms0, ctr0 = 0
        while ctr ~= final_ctr do
            local ms = GetRunningTime()
            if prev_ms and ms ~= prev_ms then
                if not ms0 then
                    ms0, ctr0 = ms, ctr
                elseif final_ctr < 0 and ms - ms0 > 500 then
                    return (ctr - ctr0) / (ms - ms0)
                end
            end
            prev_ms = ms
            ctr = ctr + 1
        end
    end

    local coefficient = busyloop(-1)
    function FastSleep(ms)
        return busyloop(ms * coefficient)
    end
end

function GetAttachmentModifiers()
    return (SightModifier * AttachmentModifier)
end
function GetSensModifier()
    return (BaseSens / Sens) * (BaseFOV / FOV)
end
function isSilencerEnabled()
    return AttachmentModifier == SilencerModifier
end
function getHoloModifier(withSilencer)
    if withSilencer then
        return HoloWithSilencerModifier
    else 
        return HoloModifier
    end
end
function getxEightModifier(withSilencer)
    if withSilencer then
        return xEightWithSilencerModifier
    else 
        return xEightModifier 
    end
end
function isHoloEnabled()
    return ((SightModifier == HoloModifier) or (SightModifier == HoloWithSilencerModifier))
end 

function isxEightEnabled()
    return ((SightModifier == xEightModifier) or (SightModifier == xEightWithSilencerModifier))
end
function UpdateAttachments(type)
    if (type == "attach") then
        if (AttachmentModifier == 1.0) then
            AttachmentModifier = SilencerModifier
            OutputLogMessage("[SILENCER] Attached\n")
        elseif (AttachmentModifier == 0.8) then
            AttachmentModifier = 1.0
            OutputLogMessage("[SILENCER] De-Attached\n")
        end
    end
   local silencerEnabled = isSilencerEnabled()

    if (type == "sight") then
        if (not isHoloEnabled() and not isxEightEnabled()) then
            SightModifier = getxEightModifier(silencerEnabled)
            OutputLogMessage("[SIGHT] x8\n")
        elseif (isxEightEnabled()) then
            SightModifier = getHoloModifier(silencerEnabled)
            OutputLogMessage("[SIGHT] Holo\n")
        elseif (isHoloEnabled()) then
            SightModifier = 1.0
            OutputLogMessage("[SIGHT] No Sight\n")
        end
    else
       if (isxEightEnabled()) then
            SightModifier = getxEightModifier(silencerEnabled)
        elseif (isHoloEnabled()) then
            SightModifier = getHoloModifier(silencerEnabled)
        end 
    end
end
---------- MoveMouseRelative & Sleep
function MMR(x, y, sleepAfter)
    sensModifier = GetSensModifier() * GetAttachmentModifiers()
    MoveMouseRelative(round(x * sensModifier), round(y *sensModifier))
    FastSleep(sleepAfter * MuzzleBoostModifier)
end

---------- Macro
function AK_0()
    BaseSens = 0.5
    BaseFOV = 75
    while IsMouseButtonPressed(1) do
        MMR(-8, 10, 30)
        if IsNotFiring() then
            break
        end
        MMR(-8, 12, 30)
        if IsNotFiring() then
            break
        end
        MMR(-10, 12, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 12, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 12, 26)
        if IsNotFiring() then
            break
        end
        MMR(2, 12, 25)
        if IsNotFiring() then
            break
        end
        MMR(2, 12, 25)
        if IsNotFiring() then
            break
        end
        MMR(2, 10, 26)
        if IsNotFiring() then
            break
        end
        MMR(2, 10, 26)
        if IsNotFiring() then
            break
        end
        MMR(2, 10, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 10, 25)
        if IsNotFiring() then
            break
        end
        MMR(-14, 10, 25)
        if IsNotFiring() then
            break
        end
        MMR(-18, 10, 26)
        if IsNotFiring() then
            break
        end
        MMR(-14, 10, 26)
        if IsNotFiring() then
            break
        end
        MMR(-14, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 10, 25)
        if IsNotFiring() then
            break
        end
        MMR(-10, 10, 25)
        if IsNotFiring() then
            break
        end
        MMR(-10, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(0, 10, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(0, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(0, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(2, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(6, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(6, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(8, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(8, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(6, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(6, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(6, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(6, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(4, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(0, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(0, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(0, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-4, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(-4, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(-4, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-4, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-6, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-6, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(-6, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(-6, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-6, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 10, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(-8, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(-8, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(-10, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(-10, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-12, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(-12, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(-12, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-12, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-12, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-12, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(-12, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(-10, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 0, 25)
        if IsNotFiring() then
            break
        end
        MMR(-10, 0, 25)
        if IsNotFiring() then
            break
        end
        MMR(-10, 0, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 0, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 0, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(-8, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(-8, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(-6, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(-6, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(-6, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(-6, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(-6, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(-4, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(-2, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(-2, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-2, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-2, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(2, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(2, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(8, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(8, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(12, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(12, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(12, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(12, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(12, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(12, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(12, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(12, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(8, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(4, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(4, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(4, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(2, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(2, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(2, 4, 20)
        if IsNotFiring() then
            break
        end
        break
    end
end

function AK()
    BaseSens = 0.5
    BaseFOV = 75

    xEightWithSilencer = isSilencerEnabled() and isxEightEnabled()
    if xEightWithSilencer then
        SightModifier = xEightModifier
        AttachmentModifier = 1.0
    end
    while IsMouseButtonPressed(1) do
        MMR(-8, 10, 30)
        if IsNotFiring() then
            break
        end
        MMR(-8, 12, 30)
        if IsNotFiring() then
            break
        end
        MMR(-10, 12, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 12, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 12, 26)
        if IsNotFiring() then
            break
        end
        MMR(2, 12, 25)
        if IsNotFiring() then
            break
        end
        MMR(2, 12, 25)
        if IsNotFiring() then
            break
        end
        MMR(2, 10, 26)
        if IsNotFiring() then
            break
        end
        MMR(2, 10, 26)
        if IsNotFiring() then
            break
        end
        MMR(2, 10, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 10, 25)
        if IsNotFiring() then
            break
        end
        MMR(-14, 10, 25)
        if IsNotFiring() then
            break
        end
        MMR(-18, 10, 26)
        if IsNotFiring() then
            break
        end
        MMR(-14, 10, 26)
        if IsNotFiring() then
            break
        end
        MMR(-14, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 10, 25)
        if IsNotFiring() then
            break
        end
        MMR(-10, 10, 25)
        if IsNotFiring() then
            break
        end
        MMR(-10, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(0, 10, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(0, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(0, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(2, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(6, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(6, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(8, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(8, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(6, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(6, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(6, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(6, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(4, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(0, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(0, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(0, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-4, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(-4, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(-4, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-4, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-6, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-6, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(-6, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(-6, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-6, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 10, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(-8, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(-8, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(-10, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(-10, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-12, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(-12, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(-12, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-12, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-12, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-12, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(-12, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(-10, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 0, 25)
        if IsNotFiring() then
            break
        end
        MMR(-10, 0, 25)
        if IsNotFiring() then
            break
        end
        MMR(-10, 0, 26)
        if IsNotFiring() then
            break
        end
        MMR(-10, 0, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 0, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(-8, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(-8, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(-6, 2, 26)
        if IsNotFiring() then
            break
        end
        MMR(-8, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(-6, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(-6, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(-6, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(-6, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(-4, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(-2, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(-2, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-2, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(-2, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(2, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(2, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(4, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(8, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(8, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(12, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 8, 25)
        if IsNotFiring() then
            break
        end
        MMR(12, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(12, 8, 26)
        if IsNotFiring() then
            break
        end
        MMR(12, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(12, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(12, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(12, 6, 26)
        if IsNotFiring() then
            break
        end
        MMR(12, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(10, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(10, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(8, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(8, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(4, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(4, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(4, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(2, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(2, 4, 26)
        if IsNotFiring() then
            break
        end
        MMR(2, 4, 20)
        if IsNotFiring() then
            break
        end
        break
    end
    if xEightWithSilencer then
        SightModifier = xEightWithSilencerModifier
        AttachmentModifier = SilencerModifier
    end
end

function SMG()
    BaseSens = 0.65
    BaseFOV = 85
    while IsMouseButtonPressed(1) do
        MMR(0, 0, 25)
        if IsNotFiring() then
            break
        end
        MMR(-3, 5, 25)
        if IsNotFiring() then
            break
        end
        MMR(-3, 5, 25)
        if IsNotFiring() then
            break
        end
        MMR(-3, 5, 25)
        if IsNotFiring() then
            break
        end
        MMR(-2, 5, 25)
        if IsNotFiring() then
            break
        end
        MMR(-2, 5, 25)
        if IsNotFiring() then
            break
        end
        MMR(-1, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(-1, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(-1, 6, 25)
        if IsNotFiring() then
            break
        end
        MMR(-1, 5, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 5, 25)
        if IsNotFiring() then
            break
        end
        MMR(1, 5, 25)
        if IsNotFiring() then
            break
        end
        MMR(1, 5, 25)
        if IsNotFiring() then
            break
        end
        MMR(1, 5, 25)
        if IsNotFiring() then
            break
        end
        MMR(1, 5, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 5, 25)
        if IsNotFiring() then
            break
        end
        MMR(2, 5, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 5, 25)
        if IsNotFiring() then
            break
        end
        MMR(1, 5, 25)
        if IsNotFiring() then
            break
        end
        MMR(1, 5, 25)
        if IsNotFiring() then
            break
        end
        MMR(1, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(3, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(1, 4, 25)
        if IsNotFiring() then
            break
        end
        MMR(1, 3, 25)
        if IsNotFiring() then
            break
        end
        MMR(1, 3, 25)
        if IsNotFiring() then
            break
        end
        MMR(1, 3, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 35)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(-1, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(-1, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(1, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(1, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(1, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(1, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(2, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(2, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(2, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(2, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(2, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(2, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(1, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(1, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 0, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 0, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 25)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 25)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 1)
        if IsNotFiring() then
            break
        end

        break
    end
end

function Thompson()
    BaseSens = 0.66
    BaseFOV = 85
    while IsMouseButtonPressed(1) do
        MMR(0, 0, 24)
        if IsNotFiring() then
            break
        end
        MMR(-2, 4, 24)
        if IsNotFiring() then
            break
        end
        MMR(-3, 5, 24)
        if IsNotFiring() then
            break
        end
        MMR(-3, 5, 24)
        if IsNotFiring() then
            break
        end
        MMR(-2, 5, 24)
        if IsNotFiring() then
            break
        end
        MMR(-2, 5, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 6, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 5, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 6, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 5, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 5, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 5, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 5, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 4, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 5, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 5, 24)
        if IsNotFiring() then
            break
        end
        MMR(2, 5, 24)
        if IsNotFiring() then
            break
        end
        MMR(2, 5, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 5, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 4, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 4, 24)
        if IsNotFiring() then
            break
        end
        MMR(3, 4, 24)
        if IsNotFiring() then
            break
        end
        MMR(3, 4, 24)
        if IsNotFiring() then
            break
        end
        MMR(3, 4, 24)
        if IsNotFiring() then
            break
        end
        MMR(2, 4, 24)
        if IsNotFiring() then
            break
        end
        MMR(2, 4, 24)
        if IsNotFiring() then
            break
        end
        MMR(2, 4, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 3, 24)
        if IsNotFiring() then
            break
        end
        MMR(2, 4, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 4, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 3, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 3, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 3, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 24)
        if IsNotFiring() then
            break
        end
        MMR(-2, 3, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 3, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 3, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 2, 35)
        if IsNotFiring() then
            break
        end
        MMR(-3, 3, 24)
        if IsNotFiring() then
            break
        end
        MMR(-3, 3, 24)
        if IsNotFiring() then
            break
        end
        MMR(-2, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(-2, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(-3, 3, 24)
        if IsNotFiring() then
            break
        end
        MMR(-2, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(-2, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(-2, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(2, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(2, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(2, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 0, 24)
        if IsNotFiring() then
            break
        end
        MMR(2, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(2, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(2, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(2, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(2, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(2, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 0, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(1, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 0, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 0, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 0, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 0, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(-2, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 0, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 2, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 24)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 13)
        if IsNotFiring() then
            break
        end

        break
    end
end

function MP5()
    BaseSens = 0.66
    BaseFOV = 85
    BaseSens = BaseSens * MP5ExtraModifier
    while IsMouseButtonPressed(1) do
        MMR(0, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 4, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 4, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 3, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 5, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 5, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 4, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 5, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 4, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 5, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 5, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 5, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 5, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 6, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 5, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 5, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 5, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 5, 19)
        if IsNotFiring() then
            break
        end
        MMR(1, 5, 19)
        if IsNotFiring() then
            break
        end
        MMR(6, 6, 19)
        if IsNotFiring() then
            break
        end
        MMR(5, 5, 19)
        if IsNotFiring() then
            break
        end
        MMR(5, 4, 19)
        if IsNotFiring() then
            break
        end
        MMR(4, 4, 19)
        if IsNotFiring() then
            break
        end
        MMR(4, 4, 19)
        if IsNotFiring() then
            break
        end
        MMR(5, 4, 19)
        if IsNotFiring() then
            break
        end
        MMR(5, 4, 19)
        if IsNotFiring() then
            break
        end
        MMR(6, 4, 19)
        if IsNotFiring() then
            break
        end
        MMR(5, 3, 19)
        if IsNotFiring() then
            break
        end
        MMR(4, 3, 19)
        if IsNotFiring() then
            break
        end
        MMR(4, 2, 19)
        if IsNotFiring() then
            break
        end
        MMR(4, 2, 19)
        if IsNotFiring() then
            break
        end
        MMR(4, 2, 19)
        if IsNotFiring() then
            break
        end
        MMR(3, 2, 19)
        if IsNotFiring() then
            break
        end
        MMR(4, 2, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 2, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(-3, 2, 19)
        if IsNotFiring() then
            break
        end
        MMR(-3, 2, 19)
        if IsNotFiring() then
            break
        end
        MMR(-4, 2, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(-4, 2, 19)
        if IsNotFiring() then
            break
        end
        MMR(-4, 2, 19)
        if IsNotFiring() then
            break
        end
        MMR(-4, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(-4, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(-4, 2, 19)
        if IsNotFiring() then
            break
        end
        MMR(-3, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(-3, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(-3, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(-3, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(-4, 2, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 1, 17)
        if IsNotFiring() then
            break
        end
        MMR(2, 2, 17)
        if IsNotFiring() then
            break
        end
        MMR(1, 1, 17)
        if IsNotFiring() then
            break
        end
        MMR(1, 1, 17)
        if IsNotFiring() then
            break
        end
        MMR(1, 1, 17)
        if IsNotFiring() then
            break
        end
        MMR(1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(3, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(3, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(3, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(3, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(3, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(2, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(1, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 1, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, -1, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 17)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 17)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 17)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 17)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 17)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, -1, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-2, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(-1, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 0, 19)
        if IsNotFiring() then
            break
        end
        MMR(0, 0, 1)
        if IsNotFiring() then
            break
        end
        break
    end
end

function LR300()
    BaseSens = 0.5
    BaseFOV = 90
    while IsMouseButtonPressed(1) do
        MMR(0, 0, 25)
        if IsNotFiring() then break end
        MMR(0, 6, 25)
        if IsNotFiring() then break end
        MMR(0, 6, 25)
        if IsNotFiring() then break end
        MMR(-1, 4, 25)
        if IsNotFiring() then break end
        MMR(-1, 4, 15)
        if IsNotFiring() then break end
        MMR(-1, 4, 25)
        if IsNotFiring() then break end
        MMR(-2, 5, 25)
        if IsNotFiring() then break end
        MMR(-2, 6, 25)
        if IsNotFiring() then break end
        MMR(-1, 7, 25)
        if IsNotFiring() then break end
        MMR(0, 7, 15)
        if IsNotFiring() then break end
        MMR(0, 7, 25)
        if IsNotFiring() then break end
        MMR(-3, 7, 25)
        if IsNotFiring() then break end
        MMR(-3, 7, 25)
        if IsNotFiring() then break end
        MMR(-1, 4, 25)
        if IsNotFiring() then break end
        MMR(-1, 8, 15)
        if IsNotFiring() then break end
        MMR(-1, 8, 25)
        if IsNotFiring() then break end
        MMR(-3, 7, 25)
        if IsNotFiring() then break end
        MMR(-3, 6, 25)
        if IsNotFiring() then break end
        MMR(-2, 5, 25)
        if IsNotFiring() then break end
        MMR(-3, 7, 15)
        if IsNotFiring() then break end
        MMR(-3, 7, 25)
        if IsNotFiring() then break end
        MMR(-3, 4, 25)
        if IsNotFiring() then break end
        MMR(-3, 5, 25)
        if IsNotFiring() then break end
        MMR(-4, 4, 25)
        if IsNotFiring() then break end
        MMR(-3, 7, 15)
        if IsNotFiring() then break end
        MMR(-3, 7, 25)
        if IsNotFiring() then break end
        MMR(-2, 4, 25)
        if IsNotFiring() then break end
        MMR(-2, 4, 25)
        if IsNotFiring() then break end
        MMR(-3, 4, 25)
        if IsNotFiring() then break end
        MMR(-4, 4, 15)
        if IsNotFiring() then break end
        MMR(-4, 4, 25)
        if IsNotFiring() then break end
        MMR(-2, 4, 25)
        if IsNotFiring() then break end
        MMR(-2, 3, 25)
        if IsNotFiring() then break end
        MMR(-2, 4, 25)
        if IsNotFiring() then break end
        MMR(-2, 4, 15)
        if IsNotFiring() then break end
        MMR(-2, 4, 25)
        if IsNotFiring() then break end
        MMR(-1, 3, 25)
        if IsNotFiring() then break end
        MMR(-1, 3, 25)
        if IsNotFiring() then break end
        MMR(0, 3, 25)
        if IsNotFiring() then break end
        MMR(0, 3, 15)
        if IsNotFiring() then break end
        MMR(0, 3, 25)
        if IsNotFiring() then break end
        MMR(2, 3, 25)
        if IsNotFiring() then break end
        MMR(1, 2, 25)
        if IsNotFiring() then break end
        MMR(2, 2, 25)
        if IsNotFiring() then break end
        MMR(2, 3, 15)
        if IsNotFiring() then break end
        MMR(2, 3, 25)
        if IsNotFiring() then break end
        MMR(4, 2, 25)
        if IsNotFiring() then break end
        MMR(4, 2, 25)
        if IsNotFiring() then break end
        MMR(4, 2, 25)
        if IsNotFiring() then break end
        MMR(2, 2, 15)
        if IsNotFiring() then break end
        MMR(2, 2, 25)
        if IsNotFiring() then break end
        MMR(3, 1, 25)
        if IsNotFiring() then break end
        MMR(5, 2, 25)
        if IsNotFiring() then break end
        MMR(5, 2, 25)
        if IsNotFiring() then break end
        MMR(3, 2, 15)
        if IsNotFiring() then break end
        MMR(3, 2, 25)
        if IsNotFiring() then break end
        MMR(4, 1, 25)
        if IsNotFiring() then break end
        MMR(4, 2, 25)
        if IsNotFiring() then break end
        MMR(3, 1, 25)
        if IsNotFiring() then break end
        MMR(3, 1, 15)
        if IsNotFiring() then break end
        MMR(3, 1, 25)
        if IsNotFiring() then break end
        MMR(2, 1, 25)
        if IsNotFiring() then break end
        MMR(2, 2, 25)
        if IsNotFiring() then break end
        MMR(2, 1, 25)
        if IsNotFiring() then break end
        MMR(2, 1, 15)
        if IsNotFiring() then break end
        MMR(2, 1, 25)
        if IsNotFiring() then break end
        MMR(0, 1, 25)
        if IsNotFiring() then break end
        MMR(0, 1, 25)
        if IsNotFiring() then break end
        MMR(0, 1, 25)
        if IsNotFiring() then break end
        MMR(0, 1, 15)
        if IsNotFiring() then break end
        MMR(0, 1, 25)
        if IsNotFiring() then break end
        MMR(-1, 1, 25)
        if IsNotFiring() then break end
        MMR(-1, 1, 25)
        if IsNotFiring() then break end
        MMR(-1, 1, 25)
        if IsNotFiring() then break end
        MMR(-1, 0, 15)
        if IsNotFiring() then break end
        MMR(-1, 0, 25)
        if IsNotFiring() then break end
        MMR(-3, 1, 25)
        if IsNotFiring() then break end
        MMR(-2, 1, 25)
        if IsNotFiring() then break end
        MMR(-1, 1, 25)
        if IsNotFiring() then break end
        MMR(-1, 1, 15)
        if IsNotFiring() then break end
        MMR(-1, 1, 25)
        if IsNotFiring() then break end
        MMR(-2, 1, 25)
        if IsNotFiring() then break end
        MMR(-2, 1, 25)
        if IsNotFiring() then break end
        MMR(-3, 0, 25)
        if IsNotFiring() then break end
        MMR(-3, 1, 15)
        if IsNotFiring() then break end
        MMR(-3, 1, 25)
        if IsNotFiring() then break end
        MMR(-3, 1, 25)
        if IsNotFiring() then break end
        MMR(-3, 1, 25)
        if IsNotFiring() then break end
        MMR(-2, 0, 25)
        if IsNotFiring() then break end
        MMR(-3, 0, 15)
        if IsNotFiring() then break end
        MMR(-3, 0, 25)
        if IsNotFiring() then break end
        MMR(-3, 1, 25)
        if IsNotFiring() then break end
        MMR(-4, 1, 25)
        if IsNotFiring() then break end
        MMR(-3, 0, 25)
        if IsNotFiring() then break end
        MMR(-3, 0, 15)
        if IsNotFiring() then break end
        MMR(-3, 0, 25)
        if IsNotFiring() then break end
        MMR(-3, 1, 25)
        if IsNotFiring() then break end
        MMR(-3, 1, 25)
        if IsNotFiring() then break end
        MMR(-3, 0, 25)
        if IsNotFiring() then break end
        MMR(-3, 0, 15)
        if IsNotFiring() then break end
        MMR(-3, 0, 25)
        if IsNotFiring() then break end
        MMR(-3, 1, 25)
        if IsNotFiring() then break end
        MMR(-3, 1, 25)
        if IsNotFiring() then break end
        MMR(-3, 1, 25)
        if IsNotFiring() then break end
        MMR(-3, 0, 15)
        if IsNotFiring() then break end
        MMR(-3, 0, 25)
        if IsNotFiring() then break end
        MMR(-2, 0, 25)
        if IsNotFiring() then break end
        MMR(-3, 1, 25)
        if IsNotFiring() then break end
        MMR(-3, 1, 25)
        if IsNotFiring() then break end
        MMR(-3, 0, 15)
        if IsNotFiring() then break end
        MMR(-3, 0, 25)
        if IsNotFiring() then break end
        MMR(-2, 1, 25)
        if IsNotFiring() then break end
        MMR(-2, 1, 25)
        if IsNotFiring() then break end
        MMR(-2, 0, 25)
        if IsNotFiring() then break end
        MMR(-2, 0, 15)
        if IsNotFiring() then break end
        MMR(-2, 0, 25)
        if IsNotFiring() then break end
        MMR(-2, 1, 25)
        if IsNotFiring() then break end
        MMR(-2, 1, 25)
        if IsNotFiring() then break end
        MMR(-1, 0, 25)
        if IsNotFiring() then break end
        MMR(-1, 0, 15)
        if IsNotFiring() then break end
        MMR(-1, 0, 25)
        if IsNotFiring() then break end
        MMR(-1, 1, 25)
        if IsNotFiring() then break end
        MMR(-1, 0, 25)
        if IsNotFiring() then break end
        MMR(-1, 0, 25)
        if IsNotFiring() then break end
        MMR(0, 0, 15)
        if IsNotFiring() then break end
        MMR(0, 0, 25)
        if IsNotFiring() then break end
        MMR(2, 1, 25)
        if IsNotFiring() then break end
        MMR(2, 1, 25)
        if IsNotFiring() then break end
        MMR(4, 1, 25)
        if IsNotFiring() then break end
        MMR(3, 0, 15)
        if IsNotFiring() then break end
        MMR(3, 0, 25)
        if IsNotFiring() then break end
        MMR(6, 2, 25)
        if IsNotFiring() then break end
        MMR(6, 1, 25)
        if IsNotFiring() then break end
        MMR(6, 0, 25)
        if IsNotFiring() then break end
        MMR(5, 0, 15)
        if IsNotFiring() then break end
        MMR(5, 0, 25)
        if IsNotFiring() then break end
        MMR(6, 1, 25)
        if IsNotFiring() then break end
        MMR(7, 1, 25)
        if IsNotFiring() then break end
        MMR(8, 0, 25)
        if IsNotFiring() then break end
        MMR(8, 0, 15)
        if IsNotFiring() then break end
        MMR(8, 0, 25)
        if IsNotFiring() then break end
        MMR(6, 2, 25)
        if IsNotFiring() then break end
        MMR(7, 1, 25)
        if IsNotFiring() then break end
        MMR(6, 0, 25)
        if IsNotFiring() then break end
        MMR(6, 0, 15)
        if IsNotFiring() then break end
        MMR(6, 0, 25)
        if IsNotFiring() then break end
        MMR(2, 0, 25)
        if IsNotFiring() then break end
        MMR(3, 1, 25)
        if IsNotFiring() then break end
        MMR(3, 1, 25)
        if IsNotFiring() then break end
        MMR(3, 1, 15)
        if IsNotFiring() then break end
        MMR(3, 1, 2)
        if IsNotFiring() then break end


        break
    end
end
-----------

 
 
function OnEvent(event, arg)
    if (event == "MOUSE_BUTTON_PRESSED" and arg == Activate) then
        Enabled = not Enabled
        if (Enabled == false) then
            OutputLogMessage("\n------ DISABLED ------\n\n")
        else
            OutputLogMessage("\n------ ENABLED ------\n\n")
        end
    end
    if (event == "MOUSE_BUTTON_PRESSED" and arg == Switch) then
        Macro = (Macro + 1) % 5
        if (Macro == 0) then
            OutputLogMessage("[~] AK\n")
        elseif (Macro == 1) then
            OutputLogMessage("[~] MP5\n")
        elseif (Macro == 2) then
            OutputLogMessage("[~] Thompson\n")
        elseif (Macro == 3) then
            OutputLogMessage("[~] SMG\n")
        elseif (Macro == 4) then
            OutputLogMessage("[~] LR300\n")
        end
    end
    if (event == "MOUSE_BUTTON_PRESSED" and arg == SightSwitch) then
        UpdateAttachments("sight")
    end
    if (event == "MOUSE_BUTTON_PRESSED" and arg == AttachmentSwitch) then
        UpdateAttachments("attach")
    end
    if (event == "MOUSE_BUTTON_PRESSED" and arg == MuzzleBoostSwitch) then
        if (MuzzleBoostModifier == 1.0) then
            MuzzleBoostModifier = MuzzleBoostModifierActive
            OutputLogMessage("[MUZZLE] Attached\n")
        elseif (MuzzleBoostModifier == MuzzleBoostModifierActive) then
            MuzzleBoostModifier = 1.0
            OutputLogMessage("[MUZZLE] De-Attached\n")
        end
    end 
    macroSwitcher =
        switch {
        [0] = AK,
        [1] = MP5,
        [2] = Thompson,
        [3] = SMG,
        [4] = LR300
    }
    if IsMouseButtonPressed(1) and Enabled then
        macroSwitcher:case(Macro)
    end
end
