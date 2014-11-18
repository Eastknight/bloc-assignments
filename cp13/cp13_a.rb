# Creat a new array constisting of the arguments
describe "new_array" do
  it "creates an array of numbers" do
    expect( new_array(1,2,3,4) ).to eq([1,2,3,4])
  end
  it "creates an array of strings" do
    expect( new_array("a", "b", "c", "d") ).to eq(["a", "b", "c", "d"])
  end
  it "creates an array of non-sequential objects" do
    expect( new_array(1,4,2,3) ).to eq([1,4,2,3])
  end
end

def new_array(a, b, c, d)
  arr = [a, b, c, d]
  return arr
end