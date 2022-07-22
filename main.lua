require('player')
require('hex')
require('init')

HexSize = 50
LineDrawMode = 'line'
FillDrawMode = 'fill'
Player = {
  q = 0,
  r = 0
}

function love.load()
  InitStyle()
end

function love.draw()
  CreateGrid(3)
end

function CreateGrid(mapRadius)
  for q = -mapRadius, mapRadius do
    local r1 = math.max(-mapRadius, -q - mapRadius);
    local r2 = math.min(mapRadius, -q + mapRadius);
    for r = r1, r2 do
      local hex = { q = q, r = r }
      DrawHex(hex, HexSize, LineDrawMode)
      if IsPlayerPos(Player, hex) then
        DrawHex(hex, HexSize - 15, FillDrawMode)
      end
    end
  end
end
