notes = $stdin.readlines.map(&:strip)

sum = 0
notes.each do |note|
  outs = note.split(" | ")[1].split.map(&:length)
  sum += outs.count(2) + outs.count(3) + outs.count(4) + outs.count(7)
end

puts sum
