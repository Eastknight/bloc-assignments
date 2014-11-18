describe ArrayModifier do
  before do 
    @array = ["Roxanne", "Put on the red light", "Roxanne", "Put on the red light"]
  end

  describe '#exclaim' do
    it "adds an exclamation mark to each element" do
      exclaimed = ArrayModifier.new(@array).exclaim
      expect(exclaimed).to eq(["Roxanne!", "Put on the red light!", "Roxanne!", "Put on the red light!"])
    end

    it "doesn't modify the original array" do
      original = @array.dup
      exclaimed = ArrayModifier.new(@array).exclaim
      expect(@array).to eq(original)
    end
  end

  describe '#capsify' do
    it "uppercases each element" do
      capped = ArrayModifier.new(@array).capsify
      expect(capped).to eq(["ROXANNE", "PUT ON THE RED LIGHT", "ROXANNE", "PUT ON THE RED LIGHT"])
    end

    it "doesn't modify the original array" do
      original = @array.dup
      capped = ArrayModifier.new(@array).capsify
      expect(@array).to eq(original)
    end
  end
end

class ArrayModifier
  attr_accessor :arr
  def initialize (arr)
    @arr = arr
  end

  def exclaim
    new_arr = []
    @arr.each do |str|
      new_arr << (str + "!")
    end
    new_arr
  end

  def capsify
    new_arr = []
    @arr.each do |str|
      new_arr << (str.upcase)
    end
    new_arr
  end
end


