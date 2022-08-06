require('settings')
require('hex')
require('util')
require('control')
require('grid')
require('entity')

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
  love.window.setTitle("Hex")
  local font = love.graphics.newFont('SpaceMono-Bold.ttf', 16)
  love.graphics.setFont(font)
  love.graphics.setDefaultFilter("nearest", "nearest")

  Palette = ColorPalettes.Orange
  love.graphics.setBackgroundColor(Palette.Background)
  love.graphics.setColor(Palette.Grid)

  love.graphics.setLineWidth(Settings.HexDrawWidth)
  love.window.setMode(Settings.ScreenWidth, Settings.ScreenHeight, Settings.WindowFlags)
  math.randomseed(os.time())
  if not Settings.Antialising then
    love.graphics.setLineStyle('rough')
  end

  Grid = GetHexGrid(Settings.HexGridSize)
end

function love.draw()
  ShowFPS()
  ShowGameStepCounter()
  DrawGridHexes(Grid)
  DrawPlayerHex(Player.currentHex)
end
