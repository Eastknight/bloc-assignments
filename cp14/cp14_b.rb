

describe "Book" do
  describe "instance variables" do
    it "should be able get and set the title to 'LOTR'" do
      b = Book.new
      # Ability to get/set title
      b.title = "LOTR"
      expect( b.title ).to eq("LOTR")
      # Ability to get/set pages
      b.pages = 1000
      expect( b.pages ).to eq(1000)
      # Ability to get/set author
      b.author = "J. R. R. Tolkien"
      expect( b.author ).to eq("J. R. R. Tolkien")
    end
    it "should be able to set the title to 'Hitchhiker's Guide'" do
      b = Book.new
      # Ability to get/set title
      b.title = "Hitchhiker's Guide"
      expect( b.title ).to eq("Hitchhiker's Guide")
      # Ability to get/set pages
      b.pages = 700
      expect( b.pages ).to eq(700)
      # Ability to get/set author
      b.author = "Douglas Adams"
      expect( b.author ).to eq("Douglas Adams")
    end
  end
end

class Book
  def title=(t)
    @title = t
  end
  def pages=(n)
    @pages = n.to_i
  end
  def author=(a)
    @author = a
  end
  def title
    @title
  end
  def pages
    @pages
  end
  def author
    @author
  end
end







