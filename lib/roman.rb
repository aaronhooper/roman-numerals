# frozen_string_literal: true

module Roman
  ROMAN = %w[M CM D CD C XC L XL X IX V IV I]
  ARABIC = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

  def self.from_arabic(arabic)
    remainder = arabic
    index = 0
    out = ''

    while remainder >= 0
      return out if remainder.zero?

      if remainder - ARABIC[index] >= 0
        out += ROMAN[index]
        remainder -= ARABIC[index]
      end

      index += 1 if (remainder - ARABIC[index]).negative?
    end
  end
end
