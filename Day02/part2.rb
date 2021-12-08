aim = 0
depth = 0
horiz = 0

$stdin.each_line do |line|
  cmd, arg = line.split
  arg = arg.to_i

  case cmd
  when "forward"
    horiz += arg
    depth += aim * arg
  when "down"
    aim += arg
  when "up"
    aim -= arg
  end
end

puts depth * horiz
