# Frog corssing class
class Frog
  attr_accessor :width, :leave, :solution

  def initialize width, leave
    @width = width
    @leave = leave
  end

  def solution(x, a)
    steps = x
    routes = Array.new(a.length + 1, 0)
    a.each_with_index do |spot, i|
      if (routes[spot] == 0)
        routes[spot] = 1
        steps -= 1
      end
      return i if (steps == 0)
    end
      return -1
  end
end
