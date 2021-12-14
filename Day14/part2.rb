lines = $stdin.readlines.map(&:strip)

start = lines[0]
rules = lines[2..-1].map{ |r|
  r.split(" -> ")
}.to_h

cur = Hash.new(0)
(start.length - 1).times do |i|
  cur[start[i..i+1]] += 1
end

40.times do
  nxt = Hash.new(0)

  cur.each do |p, c|
    next if c.zero?

    f, t = p.chars
    m = rules[p]
    nxt[f + m] += c
    nxt[m + t] += c
  end

  cur = nxt
end

chtal = Hash.new(0)
cur.each do |p, c|
  chtal[p[0]] += c
end
chtal[start[-1]] += 1

chcnt = chtal.values
puts chcnt.max - chcnt.min
