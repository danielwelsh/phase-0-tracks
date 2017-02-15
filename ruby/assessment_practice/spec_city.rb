require_relative './house'

describe City do
  let(:city) { City.new }

  it "price per square foot" do
    house1 = house.new(450000,400000,2500)
    house2 = house.new(400000,350000,2500)
    @houses << house1
    @houses << house2

    expect(city.avg_home).to eq (425000)
  end

  
  end

end