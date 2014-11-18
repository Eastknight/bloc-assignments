#test RSpec errors
class MadeUpClass
  def return_string
    "String to return"
  end
end


p "The console is not erroring."


describe MadeUpClass do
  describe "#return_string" do
    it "returns the right string" do
      expect( MadeUpClass.new.return_string ).to eq("String to return")
    end
  end
end

#Basics

class Book
  def set_title_and_author(title, author)
    @title = title
    @author = author
  end
  def description
    "#{@title} was written by #{@author}"
  end
end


describe "Book" do
  describe "description" do
    it "should return title and author in description" do
      book = Book.new
      book.set_title_and_author("Ender's Game","Orson Scott Card")
      expect( book.description ).to eq("Ender's Game was written by Orson Scott Card")
    end
  end
end