require('player')
require('hex')
require('init')

function love.load()
  Init()
end

function love.draw()
  CreateHexGrid(3)
end
