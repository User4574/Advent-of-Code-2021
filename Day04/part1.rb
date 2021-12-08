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

at = -1
until cards.any?{ |c| win?(c) }
  at += 1
  call(cards, numbers[at])
end

puts cards.select{ |c| win?(c) }[0].flatten.compact.sum * numbers[at]
