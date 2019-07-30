--
-- Created by IntelliJ IDEA.
-- User: Ярослав
-- Date: 31.07.2019
-- Time: 2:20
-- To change this template use File | Settings | File Templates.
--
require 'battlefield'

function set_ui()
    ui_pics = {}
    ui_pics.turn = love.graphics.newImage("img/ui_turn.png")
    ui_pics.turn_red = love.graphics.newImage("img/ui_turn_red.png")
    ui_pics.turn_blue = love.graphics.newImage("img/ui_turn_blue.png")
    ui_pics.mines = love.graphics.newImage("img/ui_mines.png")
    ui_pics.mine_4 = love.graphics.newImage("img/ui_mine_4.png")
    ui_pics.mine_3 = love.graphics.newImage("img/ui_mine_3.png")
    ui_pics.mine_2 = love.graphics.newImage("img/ui_mine_2.png")
    ui_pics.mine_1 = love.graphics.newImage("img/ui_mine_1.png")
    ui_pics.mine_0 = love.graphics.newImage("img/ui_mine_0.png")
    ui_pics.mine_curr = ui_pics.mine_4
    ui_pics.mine_button = love.graphics.newImage("img/ui_but_mine.png")
    ui_pics.walk_button = love.graphics.newImage("img/ui_but_walk.png")
    ui_pics.eot_button = love.graphics.newImage("img/ui_but_eot.png")
    ui_pics.crs_walk = love.mouse.newCursor("img/crs_walk.png")
    ui_pics.crs_mine = love.mouse.newCursor("img/crs_mine.png")
    ui_pics.crs_eot = love.mouse.newCursor("img/crs_eot.png")
    ui_pics.exit = love.graphics.newImage("img/ui_exit.png")
end

function drawUI ()
    if player_red.isTurn == true then
        ui_pics.turn_curr = ui_pics.turn_red
    elseif player_blue.isTurn == true then
        ui_pics.turn_curr = ui_pics.turn_blue
    end

    love.graphics.draw(ui_pics.turn, 45 + start_bf_x + tile_size * x_tiles, 12 + start_bf_y)
    love.graphics.draw(ui_pics.turn_curr, 45 + start_bf_x + tile_size * x_tiles, 70 + start_bf_y)
    love.graphics.draw(ui_pics.mines, 45 + start_bf_x + tile_size * x_tiles, 190 + start_bf_y)
    love.graphics.draw(ui_pics.mine_curr, 45 + start_bf_x + tile_size * x_tiles, 240 + start_bf_y)
    love.graphics.draw(ui_pics.walk_button, start_bf_x + 40, start_bf_y + tile_size * y_tiles + 35)
    love.graphics.draw(ui_pics.mine_button, start_bf_x + 290, start_bf_y + tile_size * y_tiles + 35)
    love.graphics.draw(ui_pics.eot_button, start_bf_x + 540, start_bf_y + tile_size * y_tiles + 35)
    love.graphics.draw(ui_pics.exit, 866, 708)
end

function checkButtonEvents(x, y)
    -- button walk
    if (x > (start_bf_x + 40)) and (x < (start_bf_x + 230)) and (y > (start_bf_y + tile_size * y_tiles + 35)) and (y < (start_bf_y + tile_size * y_tiles + 155)) then
        love.mouse.setCursor(ui_pics.crs_walk)
    end

    -- button mine
    if (x > (start_bf_x + 290)) and (x < (start_bf_x + 480)) and (y > (start_bf_y + tile_size * y_tiles + 35)) and (y < (start_bf_y + tile_size * y_tiles + 155)) then
        love.mouse.setCursor(ui_pics.crs_mine)
    end

    -- button end of turn
    if (x > (start_bf_x + 540)) and (x < (start_bf_x + 730)) and (y > (start_bf_y + tile_size * y_tiles + 35)) and (y < (start_bf_y + tile_size * y_tiles + 155)) then
        love.mouse.setCursor(ui_pics.crs_eot)
    end
    -- button exit
    if (x > 865) and (y > 708) then
        love.event.quit()
    end
end

function set_players_on_bf()
    -- blue player starts on right side of battlefield
    player_blue.field_x = (x_tiles - 1)

    love.graphics.setColor (220,220,220)

    love.graphics.draw(player_red.pic, start_bf_x + player_red.field_x * tile_size + 5, start_bf_y + player_red.field_y * tile_size + 5)
    love.graphics.draw(player_blue.pic, start_bf_x + player_blue.field_x * tile_size + 5, start_bf_y + player_blue.field_y * tile_size + 5)
end
