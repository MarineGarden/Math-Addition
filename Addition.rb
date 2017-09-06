class Addition

  def initialize

    @excess = false

  end

  def self.calculate(a, b)

    additionTry = a[-1, 1].to_i + b[-1, 1].to_i + (@excess ? 1 : 0)
    @excess = additionTry >= 10
    additionTry = @excess ? additionTry - 10 : additionTry
    result = a.length > 0 || b.length > 0 ? calculate(a[0...-1], b[0...-1]) + additionTry.to_s : additionTry.to_s
    result[0] == "0" ? result.length == 1 ? "0" : result[1, result.length - 1] : result

  end

end