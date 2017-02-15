require_relative 'city'

describe City do
  let(:city) { City.new }

  it "houses average price" do
  house1 = House.new(450000,400000,2500)
  house2 = House.new(400000,350000,2500)
  city.houses << house1
  city.houses << house2

    expect(city.avg_home).to eq (425000)
  end

  it "maximum price of home that exists" do 
  house1 = House.new(450000,400000,2500)
  house2 = House.new(400000,350000,2500)
  city.houses << house1
  city.houses << house2
    expect(city.max_city_price).to eq(450000)
  end


end