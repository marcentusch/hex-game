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
  if Settings.Debug then
    WriteDebugCoords(hex, hexSize, x, y)
  end
end

function DrawGridHex(hex, playerHex)
  if HexOverlaps(playerHex, hex) then
    DrawPlayerHex(hex)
  else
    DrawHex(hex, Settings.HexSize, 'line')
  end
end

function DrawPlayerHex(hex)
  DrawHex(hex, Settings.HexSize, 'line')
  DrawHex(hex, Settings.HexSize - 15, 'fill')
end

function HexToPixel(hex)
  local x = Settings.HexSize * (3 / 2 * hex.q) + love.graphics.getWidth() / 2
  local y = Settings.HexSize * (math.sqrt(3) / 2 * hex.q + math.sqrt(3) * hex.r) + love.graphics.getHeight() / 2
  return x, y
end

function GetHexGrid(mapRadius)
  local grid = {}
  for q = -mapRadius, mapRadius do
    local r1 = math.max(-mapRadius, -q - mapRadius);
    local r2 = math.min(mapRadius, -q + mapRadius);
    for r = r1, r2 do
      local hex = CreateHex(q, r)
      grid[hex.id] = hex
    end
  end
  return grid
end

function DrawGridHexes(hexGrid, playerHex)
  for key, hex in pairs(hexGrid) do
    DrawGridHex(hex, playerHex)
  end
end

function HexOverlaps(hex1, hex2)
  if hex1.q == hex2.q and hex1.r == hex2.r then
    return true
  end
  return false
end

function CreateHex(q, r)
  return { id = q .. r, q = q, r = r }
end

function SumHex(hex1, hex2)
  return CreateHex(hex1.q + hex2.q, hex1.r + hex2.r)
end
