#Returns the number of element plus one

describe "array_quantity_plus_one" do
  it "returns the number of items for a short array plus one" do
    expect( array_quantity_plus_one([1,2,3]) ).to eq(4)
  end
  it "returns the number of items for a long array plus one" do
    expect( array_quantity_plus_one([1,532,23,35,52,39]) ).to eq(7)
  end
end

def array_quantity_plus_one(arr)
  return arr.length + 1
end



