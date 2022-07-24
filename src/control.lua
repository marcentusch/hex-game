require('customSettings')

function love.keypressed(key)
  if key == "escape" then
    love.event.quit()
  end

  if key == Controls.up then -- up
    HandlePlayerMovement(CreateHex(0, -1))
  elseif key == Controls.rup then -- right up
    HandlePlayerMovement(CreateHex(1, -1))
  elseif key == Controls.rdown then -- right down
    HandlePlayerMovement(CreateHex(1, 0))
  elseif key == Controls.down then -- down
    HandlePlayerMovement(CreateHex(0, 1))
  elseif key == Controls.ldown then -- left down
    HandlePlayerMovement(CreateHex(-1, 1))
  elseif key == Controls.lup then -- left up
    HandlePlayerMovement(CreateHex(-1, 0))
  end
end

function MovePlayerToHex(hex)
  Player.currentHex.q = hex.q
  Player.currentHex.r = hex.r
end

function HandlePlayerMovement(hex)
  local updatedHex = SumHex(Player.currentHex, hex)
  if IsHexOutOfBounds(updatedHex, OutOfBboundsHexIds) then return nil end
  MovePlayerToHex(updatedHex)
end

function IsHexOutOfBounds(targetHex, outOfBboundsHexIds)
  for i, hexId in ipairs(outOfBboundsHexIds) do
    if targetHex.id == hexId then return true end
  end
  return false
end
