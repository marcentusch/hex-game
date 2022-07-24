require('customSettings')

function love.keypressed(key)
  if key == "escape" then
    love.event.quit()
  end

  if key == Controls.up then -- up
    MovePlayer(1, -1)
  elseif key == Controls.rup then -- right up
    MovePlayer(1, 0)
  elseif key == Controls.rdown then -- right down
    MovePlayer(0, 1)
  elseif key == Controls.down then -- down
    MovePlayer(-1, 1)
  elseif key == Controls.ldown then -- left down
    MovePlayer(-1, 0)
  elseif key == Controls.lup then -- left up
    MovePlayer(0, -1)
  end
end

function MovePlayer(q, r)
  Player.currentHex.q = Player.currentHex.q + q
  Player.currentHex.r = Player.currentHex.r + r
end
