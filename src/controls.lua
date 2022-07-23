function love.keypressed(key)
  if key == "escape" then
    love.event.quit()
  end
  if key == "f" then
    Player.currentHex.r = Player.currentHex.r - 1
  end
  if key == "c" then
    Player.currentHex.r = Player.currentHex.r + 1
  end
  if key == "w" then
    Player.currentHex.q = Player.currentHex.q - 1
  end
  if key == "t" then
    Player.currentHex.q = Player.currentHex.q + 1
  end
  if key == "r" then
    Player.currentHex.r = Player.currentHex.r + 1
    Player.currentHex.q = Player.currentHex.q - 1
  end
  if key == "p" then
    Player.currentHex.r = Player.currentHex.r - 1
    Player.currentHex.q = Player.currentHex.q + 1
  end
end
