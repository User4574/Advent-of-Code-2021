class Vertex
  def initialize(d)
    @neighbours = {}
    @visited = false
    @distance = d
  end

  attr_accessor :distance

  def name
    @name
  end

  def connect(to, cost)
    @neighbours[to] = cost
  end

  def neighbours
    @neighbours.keys
  end

  def costto(neighbour)
    @neighbours[neighbour]
  end

  def visited?
    @visited
  end

  def visited!
    @visited = true
  end
end

input = $stdin.readlines.map(&:strip)

h = input.length
w = input[0].length
maxd = (h+w+1) * 9

vertices = Array.new(h) { Array.new(w) { Vertex.new(maxd) } }

h.times do |r|
  w.times do |c|
    vertices[r][c].connect(vertices[r-1][c], input[r-1][c].to_i) if r > 0
    vertices[r][c].connect(vertices[r+1][c], input[r+1][c].to_i) if r < (h-1)
    vertices[r][c].connect(vertices[r][c-1], input[r][c-1].to_i) if c > 0
    vertices[r][c].connect(vertices[r][c+1], input[r][c+1].to_i) if c < (w-1)
  end
end

vertices[0][0].distance = 0

cur = vertices[0][0]
dst = vertices[h-1][w-1]

unvisited = vertices.flatten

loop do
  break if dst.visited?

  nbrs = cur.neighbours
  nbrs.each do |nbr|
    next if nbr.visited?
    d = cur.distance + cur.costto(nbr)
    nbr.distance = d if d < nbr.distance
  end

  cur.visited!
  unvisited.delete(cur)

  cur = unvisited.min{ |a,b| a.distance <=> b.distance }
end

puts dst.distance
