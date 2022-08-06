function DrawPlayerHex(playerHex)
    local prevCol = { love.graphics.getColor() }
    love.graphics.setColor(Palette.Player)
    DrawHex(playerHex, Settings.HexSize, 'line')
    DrawHex(playerHex, Settings.HexSize - 15, 'fill')
    love.graphics.setColor(prevCol)
end

