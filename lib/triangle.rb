class Triangle
  attr_reader :side_1, :side_2, :side_3
  attr_accessor :type

  def initialize(side_1, side_12, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if @side_1 == 0 || @side_2 == 0 || @side_3 == 0
      begin
        raise TraingleError
      rescue TriangleError => error
        puts error.message
      end
    elsif @side_1 + @side_2 < @side_3 || @side_1 + @side_3 < @side_2 || @side_2 + @side_3 < @side_1
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif @side_1 == @side_2 == @side_3
      @type = :equilateral
    elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
      @type = :isosceles
    else
      @type = :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Your sides are unacceptable lengths."
    end
  end

end
