function ShowFPS()
  love.graphics.print("FPS: " .. tostring(love.timer.getFPS()), 10, 10)
end

function WriteDebugCoords(hex, hexSize, x, y)
  local r, g, b, a = love.graphics.getColor()

  love.graphics.setColor(r, 0 / 255, 0 / 255, a)
  love.graphics.print(hex.q .. ":" .. hex.r, x - (Settings.HexSize / 2), y - (Settings.HexSize / 5))
  love.graphics.setColor(r, g, b, a)
end

function GetOutOfBoundsHexIds()
  return { "0-6", "1-6", "2-6", "3-6", "4-6", "5-6", "6-6", "6-5", "6-4", "6-3", "6-2", "6-1", "60", "51", "42", "33",
    "24", "15", "06", "-16", "-26", "-36", "-46", "-56", "-66", "-65", "-64", "-63", "-62", "-61", "-60", "-5-1", "-4-2",
    "-3-3", "-2-4", "-1-5" }
end
