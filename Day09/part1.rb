def risk(floor, row, col)
  this = floor[row][col]
  return 0 if row > 0                     && floor[row-1][col] <= this
  return 0 if row < (floor.length - 1)    && floor[row+1][col] <= this
  return 0 if col > 0                     && floor[row][col-1] <= this
  return 0 if col < (floor[0].length - 1) && floor[row][col+1] <= this
  this + 1
end

floor = $stdin.readlines.map(&:strip).map{ |l| l.chars.map(&:to_i) }
risks = Array.new(floor.length) { Array.new(floor[0].length, 0) }

floor.length.times do |row|
  floor[0].length.times do |col|
    risks[row][col] = risk(floor, row, col)
  end
end

puts risks.flatten.sum
