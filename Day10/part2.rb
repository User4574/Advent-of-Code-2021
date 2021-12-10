class Array
  class Undefined < Exception; end
  def median
    if (self.length % 2) == 1
      self.sort[(self.length - 1) / 2]
    else
      raise Undefined
    end
  end
end

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
      return nil if expect.pop != ch
    end
  end
  return expect.reverse
end

def score(comp)
  s = 0
  comp.each do |c|
    s *= 5
    s += {
      ?) => 1,
      ?] => 2,
      ?} => 3,
      ?> => 4
    }[c]
  end
  s
end

lines = $stdin.readlines.map(&:strip)

scores = []
lines.each do |line|
  completion = check(line)
  next if completion.nil?
  scores.push(score(completion))
end

puts scores.median
