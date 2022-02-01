module Roman
  ARABIC = [
    1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1
  ]

  ROMAN = %w[
    M CM D CD C XC L XL X IX V IV I
  ]

  def self.from_arabic(arabic)
    remainder = arabic
    index = 0
    out = ''

    while remainder >= 0
      return out if remainder == 0

      if remainder - ARABIC[index] >= 0
        out += ROMAN[index]
        remainder -= ARABIC[index]
      end

      index += 1 if remainder - ARABIC[index] < 0
    end
  end
end
