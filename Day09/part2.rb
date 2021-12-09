def low?(floor, row, col)
  this = floor[row][col]
  return false if row > 0                     && floor[row-1][col] <= this
  return false if row < (floor.length - 1)    && floor[row+1][col] <= this
  return false if col > 0                     && floor[row][col-1] <= this
  return false if col < (floor[0].length - 1) && floor[row][col+1] <= this
  true
end

def basin(floor, low)
  seen = []
  queue = [low]

  until queue.empty?
    row, col = queue.shift
    seen.push([row, col])

    queue.push([row - 1, col]) if row > 0                     && floor[row - 1][col] < 9
    queue.push([row + 1, col]) if row < (floor.length - 1)    && floor[row + 1][col] < 9
    queue.push([row, col - 1]) if col > 0                     && floor[row][col - 1] < 9
    queue.push([row, col + 1]) if col < (floor[0].length - 1) && floor[row][col + 1] < 9

    queue -= seen
  end

  seen.length
end

floor = $stdin.readlines.map(&:strip).map{ |l| l.chars.map(&:to_i) }
lows = []

floor.length.times do |row|
  floor[0].length.times do |col|
    lows << [row, col] if low?(floor, row, col)
  end
end

basins = []
lows.each do |low|
  basins << basin(floor, low)
end

puts basins.max(3).inject(&:*)
