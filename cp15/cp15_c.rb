class Calculator
  def self.description
    "Performs basic mathematical operations"
  end
  attr_accessor :x
  attr_accessor :y
  def initialize (x ,y)
    @x = x.to_f
    @y = y.to_f
  end
  def add
    @x + @y
  end
  def subtract
    @x - @y
  end
  def multiply
    @x * @y
  end
  def divide
    @x / @y
  end

end


describe "Calculator" do
  describe "description" do
    it "returns a description string" do
      Calculator.description.should == "Performs basic mathematical operations"
    end
  end
  describe "instance methods" do
    before { @calc = Calculator.new(7, 2) }

    describe "initialize" do
      it "takes two numbers" do
        expect( @calc.x ).to eq(7)
        expect( @calc.y ).to eq(2)
      end
    end
    describe "add" do
      it "adds the two numbers" do
        expect( @calc.add ).to eq(9)
      end
    end
    describe "subtract" do
      it "subtracts the second from the first" do
        expect( @calc.subtract ).to eq(5)
      end
    end
    describe "multiply" do
      it "returns the first number times the second" do
        expect( @calc.multiply ).to eq(14)
      end
    end
    describe "divide" do
      it "divides the numbers, returning a 'Float' if appropriate" do
        expect( @calc.divide ).to eq(3.5)
      end
    end
  end
end