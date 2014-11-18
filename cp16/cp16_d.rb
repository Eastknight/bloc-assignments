describe "Title" do
  describe "fix" do
    it "capitalizes the first letter of each word" do
      expect( Title.new("the great gatsby").fix ).to eq("The Great Gatsby")
    end
    it "works for words with mixed cases" do
      expect( Title.new("liTTle reD Riding hOOD").fix ).to eq("Little Red Riding Hood")
    end
    it "downcases articles" do
      expect( Title.new("The lord of the rings").fix ).to eq("The Lord of the Rings")
      expect( Title.new("The sword And The stone").fix ).to eq("The Sword and the Stone")
      expect( Title.new("the portrait of a lady").fix ).to eq("The Portrait of a Lady")
    end
    it "works for strings with all uppercase characters" do
      expect( Title.new("THE SWORD AND THE STONE").fix ).to eq("The Sword and the Stone")
    end
  end
end

class Title
  @@lower_case_word = ["a", "an", "the", "of", "and"]
  attr_accessor :title
  def initialize (str)
    @title = str
  end
  def fix
    arr = @title.split
    arr.each_with_index do |word, i|
      if i != 0 && @@lower_case_word.include?(word.downcase)
        word.downcase!
      else
        word.capitalize!
      end
    end
    arr.join(" ")
  end
  def self.getter
    @@lower_case_word
  end
  def self.setter(var)
    @@lower_case_word = var
  end
end
