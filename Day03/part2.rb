class Array
  def when(ary)
    self.zip(ary).map{ |e| e[1] ? e[0] : nil }.compact
  end
end

$lines = $stdin.each_line.map(&:strip)
$bits = $lines[0].length
$total = $lines.length

valido2 = Array.new($total, true)
validco2 = Array.new($total, true)

def get_bit_count(valid, bit)
  $lines.when(valid).map{ |l| l[bit].to_i }.sum
end

def unmark(valid, bit, where)
  $total.times do |i|
    valid[i] = false if valid[i] && $lines[i][bit] == where
  end
end

at = 0
while valido2.count(true) > 1
  freq = get_bit_count(valido2, at)
  unmark(valido2, at, freq >= (valido2.count(true) - freq) ? ?0 : ?1)
  at += 1
end

at = 0
while validco2.count(true) > 1
  freq = get_bit_count(validco2, at)
  unmark(validco2, at, (freq >= (validco2.count(true) - freq) ? ?1 : ?0))
  at += 1
end

o2 = $lines[valido2.index(true)].to_i(2)
co2 = $lines[validco2.index(true)].to_i(2)

puts o2 * co2
