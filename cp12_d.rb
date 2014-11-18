def favorite_number(fav, guess)
  if guess > fav
    return "Too high!"
  elsif guess < fav
    return "Too low!"
  else
    return "You got it!"
  end
end

describe "favorite_number" do
  it "should return 'Too high!' if the guess is higher than fav" do
    expect(favorite_number(5, 11) ).to eq("Too high!")
  end
  it "should return 'Too low!' if the guess is lower than fav" do
    expect(favorite_number(10, 1) ).to eq("Too low!")
  end
  it "should return 'You got it!' if the guess is equal to fav" do
    expect(favorite_number(5, 5) ).to eq("You got it!")
  end
end