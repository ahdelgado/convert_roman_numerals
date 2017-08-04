require 'rspec'

describe "Number Conversion" do
  samples = {
      1 => "I",
      2 => "II",
      3 => "III",
      4 => "IV",
      5 => "V",
      10 => "X",
      14 => "XIV",
      30 => "XXX",
      42 => "XLII",
      60 => "LX",
      85 => "LXXXV",
      200 => "CC",
      402 => "CDII",
      211 => "CCXI",
      3200 => "MMMCC",
  }
  samples.each do |arabic_number, roman_numeral|
    it "converts #{arabic_number} to #{roman_numeral}" do
      Test.assert_equals(convert_roman_number(arabic_number), roman_numeral)
    end
  end
end