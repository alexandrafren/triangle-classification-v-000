class Triangle
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_12, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
    else
       nil
    end
  end


  class TriangleError < StandardError
    def message
      "Your sides are unacceptable lengths."
    end
  end

end
