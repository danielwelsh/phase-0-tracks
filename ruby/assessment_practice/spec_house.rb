require_relative './house'

describe House do
  let(:house) { House.new(450000,400000,2500) }

  it "price per square foot" do
    expect(house.price_per_foot).to eq 180
  end

  it "1 year capital gains calculation" do 
    expect(house.capital_gains).to eq 50000
  end

  it "prints all the internal calculations" do 
    expect(house.print_house).to eq ("This house costs $180 a square foot and changed in value by $50000 from last year.")
  end

end