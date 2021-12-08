lines = $stdin.each_line.map(&:strip)
bits = lines[0].length
total = lines.length

counts = []

bits.times do |b|
  counts[b] = lines.map { |l| l[b] }.map(&:to_i).sum
end

gamma = 0
epsilon = 0

counts.each do |c|
  gamma *= 2
  epsilon *= 2
  if c > (total - c)
    gamma += 1
  else
    epsilon += 1
  end
end

puts gamma * epsilon
