grid = $stdin.readlines.map(&:strip).map{ |row| row.chars.map(&:to_i) }

flashes = 0

100.times do
  10.times do |row|
    10.times do |col|
      grid[row][col] += 1
    end
  end

  flashed = Array.new(10) { Array.new(10, false) }
  loop do
    new = grid.map(&:dup)
    noflash = true

    10.times do |row|
      10.times do |col|
        if grid[row][col] > 9 && !flashed[row][col]
          flashed[row][col] = true
          noflash = false

          new[row - 1][col - 1] += 1 if row > 0 && col > 0
          new[row - 1][col    ] += 1 if row > 0
          new[row - 1][col + 1] += 1 if row > 0 && col < 9
          new[row    ][col - 1] += 1 if            col > 0
          new[row    ][col    ] += 1
          new[row    ][col + 1] += 1 if            col < 9
          new[row + 1][col - 1] += 1 if row < 9 && col > 0
          new[row + 1][col    ] += 1 if row < 9
          new[row + 1][col + 1] += 1 if row < 9 && col < 9
        end
      end
    end

    grid = new
    break if noflash
  end

  flashes += flashed.flatten.count(true)

  10.times do |row|
    10.times do |col|
      grid[row][col] = 0 if grid[row][col] > 9
    end
  end
end

puts flashes
