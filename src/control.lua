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
  GameSteps = GameSteps + 1
  local updatedHex = SumHex(Player.currentHex, hex)
  if IsOutOfBounds(updatedHex) then return nil end
  MovePlayerToHex(updatedHex)
end

function IsOutOfBounds(hex)
  local s = -hex.q - hex.r
  if (math.abs(s) <= Settings.HexGridSize
      and math.abs(hex.r) <= Settings.HexGridSize
      and math.abs(hex.q) <= Settings.HexGridSize) then
    return false
  else
    return true
  end
end
