
def link_to(text, address)
  "<a href='#{address}'>#{text}</a>"
end


describe "link_to" do
  it "Should return a valid link for Bloc" do
    expect( link_to("Bloc", "https://www.bloc.io")).to eq("<a href='https://www.bloc.io'>Bloc</a>")
  end

  it "Should return a valid link for Google" do
    expect( link_to("Google", "http://www.google.com")).to eq("<a href='http://www.google.com'>Google</a>")
  end
end