positions = $stdin.gets.strip.split(?,).map(&:to_i)

minfuel = nil
(positions.min..positions.max).each do |candidate|
  fuelneed = positions.map{ |position|
    d = (position - candidate).abs
    (d * (d + 1)) / 2
  }.sum
  minfuel = fuelneed if minfuel.nil? || fuelneed < minfuel
end

puts minfuel
