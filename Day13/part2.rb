def printgrid(coos)
  maxX = coos.map(&:first).max
  maxY = coos.map(&:last).max
  maxY += 1 if maxY.even?

  (0..maxY).step(2).each do |y|
    (0..maxX).each do |x|
      if     coos.include?([x, y]) &&  coos.include?([x, y+1])
        print ?█
      elsif  coos.include?([x, y]) && !coos.include?([x, y+1])
        print ?▀
      elsif !coos.include?([x, y]) &&  coos.include?([x, y+1])
        print ?▄
      else
        print ?\s
      end
    end
    puts
  end
end

lines = $stdin.readlines.map(&:strip)
split = lines.index("")

coords = lines[0...split].map{ |l| l.split(?,).map(&:to_i) }
folds = lines[(split + 1)..-1]

folds.each do |fold|
  a, c = fold.split[2].split(?=)
  c = c.to_i
  f = c * 2

  case a
  when ?x
    coords.map! do |coord|
      if coord[0] > c
        [f - coord[0], coord[1]]
      else
        coord
      end
    end
  when ?y
    coords.map! do |coord|
      if coord[1] > c
        [coord[0], f - coord[1]]
      else
        coord
      end
    end
  end

  coords.uniq!
end

printgrid(coords)
