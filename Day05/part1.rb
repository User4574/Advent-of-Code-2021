def markhoriz(grid, row, from, to)
  (from..to).each do |x|
    grid[row][x] += 1
  end
end

def markvert(grid, col, from, to)
  (from..to).each do |y|
    grid[y][col] += 1
  end
end

def mark(grid, fx, fy, tx, ty)
  if fy == ty
    if tx > fx
      markhoriz(grid, fy, fx, tx)
    else
      markhoriz(grid, fy, tx, fx)
    end
  elsif fx == tx
    if ty > fy
      markvert(grid, fx, fy, ty)
    else
      markvert(grid, fx, ty, fy)
    end
  end
end

SIZE = 1000

floor = Array.new(SIZE) { Array.new(SIZE, 0) }

$stdin.each_line do |line|
  from, to = line.strip.split(" -> ")
  from = from.split(?,)
  to = to.split(?,)
  mark(floor, from[0].to_i, from[1].to_i, to[0].to_i, to[1].to_i)
end

count = 0
floor.each do |row|
  row.each do |cell|
    count += 1 if cell > 1
  end
end

puts count
