incrs = 0

records = $stdin.each_line.map(&:to_i)

(0..(records.length - 4)).each do |at|
  suml = records[(at+0)..(at+2)].sum
  sumr = records[(at+1)..(at+3)].sum

  incrs += 1 if sumr > suml
end

puts incrs
