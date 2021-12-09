positions = $stdin.gets.strip.split(?,).map(&:to_i)

minfuel = nil
(positions.min..positions.max).each do |candidate|
  fuelneed = positions.map{ |position| (position - candidate).abs }.sum
  minfuel = fuelneed if minfuel.nil? || fuelneed < minfuel
end

puts minfuel
