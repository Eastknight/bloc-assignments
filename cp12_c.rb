# Can I Get ? Method
describe "can_i_get?" do
  it "returns true if user wants a computer and has $1,000" do
    expect( can_i_get?("computer", 1100) ).to eq(true)
  end
  it "returns false for a computer if they don't have $1,000" do
    expect( can_i_get?("computer", 900) ).to eq(false)
  end
  it "returns true for a iPad if they have $500" do
    expect( can_i_get?("ipad", 500) ).to eq(true)
  end
  it "returns false for a iPad if they have less than $500" do
    expect( can_i_get?("ipad", 499) ).to eq(false)
  end
end

def can_i_get?(item, money)
  if item == "computer" && money >= 1000
    return true
  end
  if item == "ipad" && money >= 500
    return true
  end
  return false
end