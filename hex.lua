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
