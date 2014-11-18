describe "Car" do
  describe "initialize" do
    it "should take make, model and year" do
      new_car = Car.new("Acura", "Integra", 1998)
      expect( new_car.make ).to eq("Acura")
      expect( new_car.model ).to eq("Integra")
      expect( new_car.year ).to eq(1998)
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
end