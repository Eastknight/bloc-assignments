#Copy the first element to the end of array, then reverse it

describe "reverse_plus_one!" do
  it "returns an altered array" do
    ary = [1,2]
    expect( reverse_plus_one!(ary) ).to eq([1,2,1])
    expect( ary ).to eq([1,2,1])
  end
  it "works on longer arrays" do
    ary = [1,2,3,4]
    expect( reverse_plus_one!(ary) ).to eq([1,4,3,2,1])
    expect( ary ).to eq([1,4,3,2,1])
  end
end

def reverse_plus_one!(arr)
  arr << arr.first
  return arr.reverse!
end