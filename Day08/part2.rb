class String
  def include_each?(oth)
    oth.each_char.all?{ |ch| self.include?(ch) }
  end

  def include_exact?(oth)
    self.chars.sort == oth.chars.sort
  end

  def delete_each(oth)
    res = self.dup
    oth.each_char{ |ch| res.delete!(ch) }
    res
  end
end

notes = $stdin.readlines.map(&:strip)

sum = 0
notes.each do |note|
  ins, outs = note.split(" | ").map(&:split)

  words = Array.new(10, nil)

  words[1] = ins.select{|i| i.length == 2}[0] #1
  words[4] = ins.select{|i| i.length == 4}[0] #4
  words[7] = ins.select{|i| i.length == 3}[0] #7
  words[8] = ins.select{|i| i.length == 7}[0] #8

  fives = ins.select{|i| i.length == 5} #235
  words[3] = fives.select{|i| i.include_each?(words[1])}[0] #3
  fives -= [words[3]] #25
  words[5] = fives.select{|i|
    i.include_each?(
      words[4].delete_each(words[1])
    )
  }[0] #5
  fives -= [words[5]] #2
  words[2] = fives[0]

  sixes = ins.select{|i| i.length == 6} #069
  words[9] = sixes.select{|i| i.include_each?(words[4])}[0] #9
  sixes -= [words[9]] #06
  words[6] = sixes.select{|i| i.include_each?(words[5])}[0] #6
  sixes -= [words[6]] #0
  words[0] = sixes[0]

  num = outs.map{ |out|
    words.index{ |w|
      w.include_exact?(out)
    }
  }
  sum += num.join.to_i
end

puts sum
