class Triangle
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if @side_1 < 1 || @side_2 < 1 || @side_3 < 1
      begin
        raise TriangleError
      rescue TriangleError => error
        error.message
      end
    elsif @side_1 == @side_2 && @side_2 == @side_3
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
