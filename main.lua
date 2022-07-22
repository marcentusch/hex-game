require('player')
require('hex')
require('init')

function love.load()
  Init()
end

function love.draw()
  CreateHexGrid(3)
end

function CreateHexGrid(mapRadius)
  for q = -mapRadius, mapRadius do
    local r1 = math.max(-mapRadius, -q - mapRadius);
    local r2 = math.min(mapRadius, -q + mapRadius);
    for r = r1, r2 do
      local hex = { q = q, r = r }
      DrawGridHex(hex)
    end
  end
end
