def check(line)
  expect = []
  line.each_char do |ch|
    case ch
    when ?(
      expect.push(?))
    when ?[
      expect.push(?])
    when ?{
      expect.push(?})
    when ?<
      expect.push(?>)
    else
      return ch if expect.pop != ch
    end
  end
  return nil
end

Score = {
  nil => 0,
  ?) => 3,
  ?] => 57,
  ?} => 1197,
  ?> => 25137
}

lines = $stdin.readlines.map(&:strip)

sum = 0
lines.each do |line|
  sum += Score[check(line)]
end

puts sum
