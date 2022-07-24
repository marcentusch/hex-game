## Notes

[Hexagon Bible](https://www.redblobgames.com/grids/hexagons/)

- hexSize: distance from center to any corner
- hex height: `h = sqrt(3) * hexSize`
- hex width: `w = hexSize * 2`

## To run game

Install love2d with `brew install love2d` or with your package manager of choice

run game with `love ./src`

## Colors

- black: 34,35,35
- white: 240, 246, 240

## TODO

- CHECK: add debug mode which shows coords on each hex
- CHECK: make sure you can't move out of the map
- CHECK: save grid in a table
- CHECK: move with f=up, s=down, w=up-left, p=up-right, r=down-left, t=down-right
- choose a color palette
  - https://lospec.com/palette-list/mulfok32
  - https://lospec.com/palette-list/pollen8
  - https://lospec.com/palette-list/blessing
  - https://lospec.com/palette-list/vinik24
