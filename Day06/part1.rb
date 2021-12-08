def update(fish)
  newfish = 0

  fish.map! do |f|
    if f.zero?
      newfish += 1
      6
    else
      f - 1
    end
  end

  newfish.times do
    fish << 8
  end
end

fish = $stdin.gets.strip.split(?,).map(&:to_i)

80.times do
  update(fish)
end

puts fish.length
