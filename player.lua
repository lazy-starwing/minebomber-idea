--
-- Created by IntelliJ IDEA.
-- User: Ярослав
-- Date: 31.07.2019
-- Time: 2:09
-- To change this template use File | Settings | File Templates.
--

player = {
    -- current x on battlefield
    field_x = 0,
    -- current y on battlefield
    field_y = 3;
    -- current mines count
    mines = 4,
    -- number of tiles for walking
    walks = 3;
    -- turn to this player
    isTurn = false;
    -- image of player
    pic = nil;
    -- get win codition
    isWin = false
}

function player:new (color)
    color = color or {}
    setmetatable (color, self)
    self.__index = self
    return color
end

player_red = player:new()
player_blue = player:new()

player_red.pic = love.graphics.newImage("img/player_red.png")
player_blue.pic = love.graphics.newImage("img/player_blue.png")

function setFirstPlayer ()
    fst = love.math.random(0,1)
    if fst == 0 then
        player_red.isTurn = true
    else
        player_blue.isTurn = true
    end
end
