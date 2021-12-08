def update(fish)
  fish.rotate!
  fish[6] += fish[8]
end

fish = [0,0,0,0,0,0,0,0,0]

$stdin.gets.strip.split(?,).map(&:to_i).each do |f|
  fish[f] += 1
end

256.times do
  update(fish)
end

puts fish.sum
