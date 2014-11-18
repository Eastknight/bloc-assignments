describe "Car" do
  describe "initialize" do
    it "should take make, model and year" do
      new_car = Car.new("Acura", "Integra", 1998)
      expect( new_car.make ).to eq("Acura")
      expect( new_car.model ).to eq("Integra")
      expect( new_car.year ).to eq(1998)
    end
  end
  describe "wheels" do
    it "should return a standard number of wheels for any car" do
      expect( Car.wheels ).to eq(4)
    end
  end
  describe "axles" do
    it "should return a standard number of axles for any car" do
      expect( Car.axles ).to eq(2)
    end
  end
end

class Car
  attr_accessor :make
  attr_accessor :model
  attr_accessor :year

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end
  def self.wheels
    4
  end
  def self.axles
    2
  end
end
