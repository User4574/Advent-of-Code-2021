lines = $stdin.readlines.map(&:strip)

cur = lines[0].chars
rules = lines[2..-1].map{ |r|
  f, t = r.split(" -> ")
  [f.chars, t]
}.to_h

10.times do
  nxt = [cur.shift]
  until cur.empty?
    nxt.push(rules[[nxt.last, cur.first]])
    nxt.push(cur.shift)
  end
  cur = nxt
end

chcnt = cur.tally.values
puts chcnt.max - chcnt.min
