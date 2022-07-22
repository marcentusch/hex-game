function IsPlayerPos(player, hex)
  if hex.q == player.q and hex.r == player.r then
    return true
  end
  return false
end
