function ShowFPS()
  love.graphics.print("FPS: " .. tostring(love.timer.getFPS()), 10, 10)
end

function WriteDebugCoords(hex, hexSize, x, y)
  local r, g, b, a = love.graphics.getColor()

  love.graphics.setColor(r, 0/255, 0/255, a)
  love.graphics.print(hex.q .. ":" .. hex.r, x - (Settings.HexSize / 2), y - (Settings.HexSize / 5))
  love.graphics.setColor(r,g,b,a)
end
