require('settings')
require('hex')
require('util')
require('control')

Grid = {}
GameSteps = 0
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
  love.graphics.setBackgroundColor(Settings.BackgroundColor)
  love.graphics.setColor(Settings.HexColor)
  love.graphics.setLineWidth(Settings.HexDrawWidth)
  love.window.setTitle("Hex")
  love.window.setMode(Settings.ScreenWidth, Settings.ScreenHeight, Settings.WindowFlags)
  Grid = GetHexGrid(Settings.HexGridSize)
  math.randomseed(os.time())
  if not Settings.Antialising then
    love.graphics.setLineStyle('rough')
  end
end

function love.draw()
  ShowFPS()
  ShowGameStepCounter()
  DrawGridHexes(Grid, Player.currentHex)
end
