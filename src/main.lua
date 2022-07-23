require('hex')
require('controls')
require('util')
ScreenWidth = 720
ScreenHeight = 720
HexSize = 50
HexGridSize = 3
Grid = {}
Player = {
  currentHex = {
    id = "00",
    q = 0,
    r = 0
  }
}


function love.load()
  local font = love.graphics.newFont('SpaceMono-Bold.ttf', 16)
  love.graphics.setFont(font)
  love.graphics.setDefaultFilter("nearest", "nearest")
  love.graphics.setColor(240 / 255, 246 / 255, 240 / 255)
  love.graphics.setBackgroundColor(34 / 255, 35 / 255, 35 / 255)
  love.graphics.setLineWidth(5)
  love.window.setTitle("Hex")
  love.window.setMode(ScreenWidth, ScreenHeight, { fullscreen = false, resizable = false, vsync = true })
  Grid = GetHexGrid(HexGridSize)
  math.randomseed(os.time())
end

function love.update(dt)

end

function love.draw()
  ShowFPS()
  DrawGridHexes(Grid, Player.currentHex)
end
