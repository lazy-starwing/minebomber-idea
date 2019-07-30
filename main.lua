--
-- Created by IntelliJ IDEA.
-- User: Ярослав
-- Date: 31.07.2019
-- Time: 1:29
-- To change this template use File | Settings | File Templates.
--
require 'player'
require 'ui'

function love.load()
    setFirstPlayer()
end

function love.draw()
    set_battlefield()
    set_players_on_bf()
    set_ui()
    drawUI()
end

function love.mousepressed(x, y)
    checkButtonEvents(x, y)
end
