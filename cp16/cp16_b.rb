
class StringModifier
  attr_accessor :str 
  def initialize(str)
    @str = str.to_s
  end
  def proclaim
    arr1 = @str.split
    arr2 = []
    arr1.each do |word|
      arr2 << (word + "!")
    end
    arr2.join(" ")
  end
end

describe StringModifier do
  describe "#proclaim" do
    it "adds an exclamation mark after each word" do
      blitzkrieg_bop = StringModifier.new("Hey ho let's go").proclaim
      expect(blitzkrieg_bop).to eq("Hey! ho! let's! go!")
    end
  end
end







