ARABIC = [
    1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1
]

ROMAN = [
    "M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"
]

def roman arabic
    remainder = arabic
    index = 0
    out = ""

    while remainder >= 0 do
        if remainder == 0
            return out 
        end

        if remainder - ARABIC[index] > 0
            out += ROMAN[index]
            remainder -= ARABIC[index]
        end

	if remainder - ARABIC[index] < 0
    	    index += 1
	end
    end
end

context "roman()" do
    it "returns a single letter when called with its equivalent number" do
        expect(roman(1)).to eq("I")
        expect(roman(5)).to eq("V")
        expect(roman(10)).to eq("X")
        expect(roman(50)).to eq("L")
        expect(roman(100)).to eq("C")
        expect(roman(500)).to eq("D")
        expect(roman(1000)).to eq("M")
    end

    it "returns '' when called with 0" do
        expect(roman(0)).to eq("")
    end

    it "returns two letters in subtractive notation when called with their equivalent numbers" do
        expect(roman(4)).to eq("IV")
        expect(roman(9)).to eq("IX")
        expect(roman(40)).to eq("XL")
        expect(roman(90)).to eq("XC")
        expect(roman(400)).to eq("CD")
        expect(roman(900)).to eq("CM")
    end

    it "returns the correct numeral for its equivalent number" do
        expect(roman(2)).to eq("II")
        expect(roman(3)).to eq("III")
        expect(roman(6)).to eq("VI")
        expect(roman(7)).to eq("VII")
        expect(roman(8)).to eq("VIII")
    end

    it "returns the correct numeral for various numbers" do
        expect(roman(1997)).to eq("MCMXCVII")
        expect(roman(2011)).to eq("MMXI")
        expect(roman(2022)).to eq("MMXXII")
        expect(roman(1485)).to eq("MCDLXXXV")
        expect(roman(1603)).to eq("MDCIII")
    end
end
