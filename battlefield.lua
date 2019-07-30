--
-- Created by IntelliJ IDEA.
-- User: Ярослав
-- Date: 31.07.2019
-- Time: 1:59
-- To change this template use File | Settings | File Templates.
--

-- start horiz coord of battlefield
start_bf_x = 50
-- start vert coord of battlefield
start_bf_y = 90
-- size of tile's lenght in pixels
tile_size = 48
-- number of horiz tiles
x_tiles = 16
-- number of vert tiles
y_tiles = 7

function set_battlefield()
    love.graphics.setColor (220,220,220)
    backgr = love.graphics.newImage("img/background.png")

    for bf_x=0,(love.graphics.getWidth() / 20) do
        for bf_y=0,(love.graphics.getHeight() / 20) do
            love.graphics.draw(backgr, bf_x * 20, bf_y * 20)
        end
    end

    love.graphics.setLineWidth (3)
    love.graphics.setColor (30,30,30)

    love.graphics.line(start_bf_x,start_bf_y, start_bf_x,start_bf_y + tile_size * y_tiles, start_bf_x + tile_size * x_tiles,start_bf_y + tile_size * y_tiles, start_bf_x + tile_size * x_tiles,start_bf_y, start_bf_x,start_bf_y)
    for i=1,(y_tiles - 1) do
        love.graphics.line(start_bf_x, start_bf_y + tile_size * i, start_bf_x + tile_size * x_tiles, start_bf_y + tile_size * i)
    end
    for j=1,(x_tiles - 1) do
        love.graphics.line(start_bf_x + tile_size * j, start_bf_y, start_bf_x + tile_size * j, start_bf_y + tile_size * y_tiles)
    end
end

