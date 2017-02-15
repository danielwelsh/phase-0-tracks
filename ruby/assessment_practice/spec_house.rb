require_relative './house'

describe House do
  let(:house) { House.new(450000,400000,2500) }

  it "price per square foot" do
    expect(house.price_per_foot).to eq 180
  end

end