# return an array with only the first and last argument of the argument

describe "first_and_last" do
  it "creates new array with numbers" do
    expect( first_and_last([1,2,3]) ).to eq([1,3])
  end
  it "creates new array with strings" do
    expect( first_and_last(["a", "b", "c", "d"]) ).to eq(["a", "d"])
  end
end

def first_and_last(a)
  arr = [a.first]
  arr << a.last
  return arr
end