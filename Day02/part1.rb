depth = 0
horiz = 0

$stdin.each_line do |line|
  cmd, arg = line.split
  arg = arg.to_i

  case cmd
  when "forward"
    horiz += arg
  when "down"
    depth += arg
  when "up"
    depth -= arg
  end
end

puts depth * horiz
