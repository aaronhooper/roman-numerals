require_relative 'roman'

describe Roman do
  context 'from_arabic()' do
    it 'returns a single letter when called with its equivalent number' do
      expect(Roman.from_arabic(1)).to eq('I')
      expect(Roman.from_arabic(5)).to eq('V')
      expect(Roman.from_arabic(10)).to eq('X')
      expect(Roman.from_arabic(50)).to eq('L')
      expect(Roman.from_arabic(100)).to eq('C')
      expect(Roman.from_arabic(500)).to eq('D')
      expect(Roman.from_arabic(1000)).to eq('M')
    end

    it "returns '' when called with 0" do
      expect(Roman.from_arabic(0)).to eq('')
    end

    it 'returns two letters in subtractive notation when called with their equivalent numbers' do
      expect(Roman.from_arabic(4)).to eq('IV')
      expect(Roman.from_arabic(9)).to eq('IX')
      expect(Roman.from_arabic(40)).to eq('XL')
      expect(Roman.from_arabic(90)).to eq('XC')
      expect(Roman.from_arabic(400)).to eq('CD')
      expect(Roman.from_arabic(900)).to eq('CM')
    end

    it 'returns the correct numeral for its equivalent number' do
      expect(Roman.from_arabic(2)).to eq('II')
      expect(Roman.from_arabic(3)).to eq('III')
      expect(Roman.from_arabic(6)).to eq('VI')
      expect(Roman.from_arabic(7)).to eq('VII')
      expect(Roman.from_arabic(8)).to eq('VIII')
    end

    it 'returns the correct numeral for various numbers' do
      expect(Roman.from_arabic(1997)).to eq('MCMXCVII')
      expect(Roman.from_arabic(2011)).to eq('MMXI')
      expect(Roman.from_arabic(2022)).to eq('MMXXII')
      expect(Roman.from_arabic(1485)).to eq('MCDLXXXV')
      expect(Roman.from_arabic(1603)).to eq('MDCIII')
    end
  end
end
