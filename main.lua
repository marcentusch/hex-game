function love.load()
  InitStyle()
  HexSize = 50
end

function love.draw()

  DrawHex(1, 1)
  DrawHex(1, 2)
  DrawHex(1, 3)
  DrawHex(2, 1)
  DrawHex(2, 2)
  DrawHex(2, 3)


end

function InitStyle()
  love.graphics.setColor(240 / 255, 246 / 255, 240 / 255)
  love.graphics.setBackgroundColor(34 / 255, 35 / 255, 35 / 255)
  love.graphics.setLineWidth(5)
  love.window.setTitle("Hex")
end

function DrawHex(q, r)
  local x, y = HexToPixel(q, r)
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
