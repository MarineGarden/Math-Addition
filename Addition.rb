class Addition

  def self.briefly_calculate(a, b)

    calculate(a, b, false)

  end

  def self.calculate(a, b, excess = false)

    buffer = try_at_end(a, b, excess)
    a.length > 0 || b.length > 0 ? buffer[0] + calculate(a[0...-1], b[0...-1], buffer[1]) : buffer[0]

  end

  def self.try(a, b, excess)

    excess ? try_at_end(a, b, excess)[0] + calculate(a, b, true) : try_at_end(a, b, excess)[0]

  end

  def self.try_at_end(a, b, excess)

    (sum = a[-1, 1].to_i + b[-1, 1].to_i + (excess ? 1 : 0)) >= 10 ? [(sum - 10).to_s, true] : [sum.to_s, false]

  end

end