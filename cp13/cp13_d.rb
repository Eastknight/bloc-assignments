#Return a string add '+' between every two elements

describe "pluses_everywhere" do
  it "returns a single plus for a short array" do
    expect( pluses_everywhere([1,2]) ).to eq("1+2")
  end
  it "returns pluses for longer arrays" do
    expect( pluses_everywhere([1,2,3,4,5]) ).to eq("1+2+3+4+5")
  end
end

def pluses_everywhere(arr)
  return arr.join('+')
end
