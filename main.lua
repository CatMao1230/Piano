-----------------------------------------------------------------------------------------
--
-- main.lua
-- CatMao https://catmaoblog.wordpress.com/
--
-----------------------------------------------------------------------------------------

display.setStatusBar(display.HiddenStatusBar) -- 隱藏狀態列
local imgBackground = display.newImageRect("Background.png", 960, 640)
imgBackground.x = 480
imgBackground.y = 320

local widget = require("widget") -- 匯入 widget 程式庫

local Sounds = {} -- 載入音效
local Keys = {} -- 宣告按鈕

for i = 1, 13, 1 do -- 載入音效
    Sounds[i] = audio.loadSound(i .. ".mp3"); 
end

for i = 1, 8, 1 do -- 白鍵
    Keys[i] = widget.newButton{
        width = 105,
        height = 325,
        id = "btn" .. i,
        defaultFile = "WhiteKey.png",
        overFile = "WhiteKeyPressed.png",
        onEvent = function(event)
            if("began" == event.phase) then
                audio.play(Sounds[i]) -- 播放音效
            end
        end
    }
end
for i = 9, 13, 1 do -- 黑鍵
    Keys[i] = widget.newButton{
    width = 65,
    height = 164,
    id = "btn" .. i,
    defaultFile = "BlackKey.png",
    overFile = "BlackKeyPressed.png",
    onEvent = function(event)
        if("began" == event.phase) then
            audio.play(Sounds[i]) -- 播放音效
        end
    end
}
end

-- 按鍵位置
local startingX = 108
local startingY = 402
local padding = 106

for i = 0, 7, 1 do
    Keys[i+1].x = startingX + padding * i 
    Keys[i+1].y = startingY
end

Keys[9].x = (Keys[1].x + Keys[2].x) / 2
Keys[10].x = (Keys[2].x + Keys[3].x) / 2
Keys[11].x = (Keys[4].x + Keys[5].x) / 2
Keys[12].x = (Keys[5].x + Keys[6].x) / 2
Keys[13].x = (Keys[6].x + Keys[7].x) / 2
for i = 9, 13, 1 do
    Keys[i].y = 322
end