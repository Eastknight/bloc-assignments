#Lock Method

describe "lock" do
  it "should return unlocked for 3258" do
    expect( lock(3, 2, 5, 8) ).to eq('unlocked')
  end
  it "should return locked for 1111" do
    expect( lock(1, 1, 1, 1) ).to eq('locked')
  end
  it "should return locked for 3111" do
    expect( lock(3, 1, 1, 1) ).to eq('locked')
  end
  it "should return unlocked for other valid combinations" do
    expect( lock(3, 2, 5, 8) ).to eq('unlocked')
    expect( lock(5, 2, 5, 0) ).to eq('unlocked')
    expect( lock(5, 2, 6, 8) ).to eq('unlocked')
    expect( lock(7, 2, 5, 8) ).to eq('unlocked')
    expect( lock(7, 2, 6, 9) ).to eq('unlocked')
  end
end

def lock (a, b, c, d)
  if !(a == 3 || a == 5 || a == 7)
    return "locked"
  elsif !(b == 2)
    return "locked"
  elsif !(c == 5 || c == 6)
    return "locked"
  elsif !(d == 8 || d == 9 || d == 0)
    return "locked"
  end
  return "unlocked"
end
