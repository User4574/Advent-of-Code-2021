def win?(card)
  return true if card.any?{ |c| c.compact.length.zero? }
  return true if card.transpose.any?{ |c| c.compact.length.zero? }
  false
end

def call(cards, number)
  cards.each do |card|
    card.each do |row|
      row.map!{ |num| num == number ? nil : num}
      end
  end
end

numbers = $stdin.gets.strip.split(?,).map(&:to_i)
cards = []

until $stdin.eof?
  $stdin.gets
  card = []
  5.times do
    card << $stdin.gets.strip.split.map(&:to_i)
  end
  cards << card
end

loser = nil
at = -1
loop do
  cs = cards.reject{ |c| win?(c) }.length
  case cs
  when 0
    break
  when 1
    loser = cards.index{ |c| !win?(c) }
  end

  at += 1
  call(cards, numbers[at])
end

puts cards[loser].flatten.compact.sum * numbers[at]
