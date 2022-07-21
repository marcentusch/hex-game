function love.load()
  InitStyle()
  HexSize = 50
end

function love.draw()
  local x, y = HexToPixel(2, 3)
  DrawHex(x, y)
end

function InitStyle()
  love.graphics.setColor(240 / 255, 246 / 255, 240 / 255)
  love.graphics.setBackgroundColor(34 / 255, 35 / 255, 35 / 255)
  love.graphics.setLineWidth(5)
  love.window.setTitle("Hex")
end

function DrawHex(x, y)
  local vertices = {}
  table.insert(vertices, x + HexSize)
  table.insert(vertices, y)
  for i = 1, 5 do
    table.insert(vertices, x + HexSize * math.cos(i * math.pi / 3))
    table.insert(vertices, y + HexSize * math.sin(i * math.pi / 3))
  end
  love.graphics.polygon("line", vertices)
end

function HexToPixel(q, r)
  local x = HexSize * (3 / 2 * q)
  local y = HexSize * (math.sqrt(3) / 2 * q + math.sqrt(3) * r)
  return x, y
end