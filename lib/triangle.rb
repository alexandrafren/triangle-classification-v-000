class Triangle
  attr_reader :side_1, :side_2, :side_3
  attr_accessor :type

  def initialize(side_1, side_12, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if @side_1 == @side_2 == @side_3
      @type = :equilateral
    elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
      @type = :isosceles
    else
      @type = :scalene
    end
  end

  class TriangleError < StandardError
    def message
      puts "Your sides are unacceptable lengths."
    end
  end

end
