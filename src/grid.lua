function DrawGridHexes(hexGrid, playerHex)
    for _, hex in pairs(hexGrid) do
        DrawHex(hex, Settings.HexSize, 'line')
    end
end
