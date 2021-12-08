incrs = 0

last = -1
this = 0

$stdin.each_line do |line|
  line = line.to_i

  if last == -1
    this = line
    last = 0
  else
    last = this
    this = line
    incrs += 1 if this > last
  end
end

puts incrs
