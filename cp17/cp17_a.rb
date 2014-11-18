describe "User" do
  describe "initialize" do
    it "can set just the name" do
      u = User.new(name: "Bob")
      expect( u.name ).to eq("Bob")
      expect( u.email ).to eq("n/a")
    end
    it "can set all values" do
      u = User.new(name: "Joe", email: "joe@example.com", bio: "Cool dude", age: 34, sex: :male)
      expect( u.name ).to eq("Joe")
      expect( u.email ).to eq("joe@example.com")
      expect( u.bio ).to eq("Cool dude")
      expect( u.age ).to eq(34)
      expect( u.sex ).to eq(:male)
    end
    it "can set no values" do
      u = User.new
      expect( u.name ).to eq("n/a")
      expect( u.email ).to eq("n/a")
      expect( u.bio ).to eq("n/a")
      expect( u.age ).to eq("n/a")
      expect( u.sex ).to eq("n/a")
    end
  end
end

class User
  attr_accessor :name
  attr_accessor :email
  attr_accessor :bio
  attr_accessor :age
  attr_accessor :sex
  def initialize (hash = {})
    