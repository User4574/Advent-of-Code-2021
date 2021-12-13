lines = $stdin.readlines.map(&:strip)
split = lines.index("")

coords = lines[0...split].map{ |l| l.split(?,).map(&:to_i) }
folds = lines[(split + 1)..-1]

folds[0..0].each do |fold|
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

puts coords.length
