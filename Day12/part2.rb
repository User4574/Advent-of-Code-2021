class Graph
  class Vertex
    def initialize(name)
      @name = name
      @neighbours = []
    end

    def name
      @name
    end

    def connect(to)
      @neighbours << to
    end

    def neighbours
      @neighbours
    end

    def big?
      @name == @name.upcase
    end

    def inspect
      @name
    end
  end

  def initialize(edges)
    @vertices = edges.flatten.uniq.map{ |v| Vertex.new(v) }
    edges.each { |f, t|
      find(f).connect(find(t))
      find(t).connect(find(f))
    }
  end

  def find(vertex)
    @vertices.select{ |v| v.name == vertex }[0]
  end
end

class Path
  def initialize(at, visited = [at])
    @at = at
    @visited = visited
  end

  def at(t = nil)
    if t.nil?
      @at
    else
      @at == t
    end
  end

  def visited(v = nil)
    if v.nil?
      @visited
    else
      @visited.include?(v)
    end
  end

  def visitable?(n)
    if n.name == "start"
      false
    elsif at.name == "end"
      false
    elsif n.big?
      true
    elsif !visited(n)
      true
    elsif !doubled?
      true
    else
      false
    end
  end

  def moveTo(n)
    Path.new(n, @visited + [n])
  end

  def inspect
    @visited.map(&:name).join(?,)
  end
  
  private

  def doubled?
    smalls = visited.reject(&:big?)
    smalls.count != smalls.uniq.count
  end
end

g = Graph.new($stdin.readlines.map{ |l| l.strip.split(?-) })

startN = g.find("start")
endN = g.find("end")

paths = []
paths << Path.new(startN)

until paths.all?{ |p| p.at(endN) }
  paths = paths.map{ |p|
    ns = p.at.neighbours
    ns.map{ |n|
      if p.at(endN)
        p
      elsif p.visitable?(n)
        p.moveTo(n)
      else
        nil
      end
    }
  }.flatten.compact.uniq
end

puts paths.count
