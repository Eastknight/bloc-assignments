def add_value_and_index(arr)
  new_arr = []
  arr.each_with_index do |n, i|
    new_arr << n + i
  end
  new_arr
end


describe '#add_value_and_index' do
  it "returns a new array composed of the value + index of each element in the former" do
    expect( add_value_and_index([2,1,0]) ).to eq([2,2,2])
  end
end