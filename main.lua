HexSize = 50
LineDrawMode = 'line'
FillDrawMode = 'fill'
Player = {
  q = 0,
  r = 0
}

function love.load()
  InitStyle()
  love.window.setMode(800, 800)
end

function love.draw()
  CreateGrid(3)
end

function InitStyle()
  love.graphics.setColor(240 / 255, 246 / 255, 240 / 255)
  love.graphics.setBackgroundColor(34 / 255, 35 / 255, 35 / 255)
  love.graphics.setLineWidth(5)
  love.window.setTitle("Hex")
end

function DrawHex(hex, hexSize, fillMode)
  local x, y = HexToPixel(hex)
  local vertices = {}
  table.insert(vertices, x + hexSize)
  table.insert(vertices, y)
  for i = 1, 5 do
    table.insert(vertices, x + hexSize * math.cos(i * math.pi / 3))
    table.insert(vertices, y + hexSize * math.sin(i * math.pi / 3))
  end
  love.graphics.polygon(fillMode, vertices)
end

function HexToPixel(hex)
  local x = HexSize * (3 / 2 * hex.q) + love.graphics.getWidth() / 2
  local y = HexSize * (math.sqrt(3) / 2 * hex.q + math.sqrt(3) * hex.r) + love.graphics.getHeight() / 2
  return x, y
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

function IsPlayerPos(player, hex)
  if hex.q == player.q and hex.r == player.r then
    return true
  end
  return false
end
