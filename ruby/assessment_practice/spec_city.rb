require_relative 'city'

describe City do
  let(:city) { City.new }

  it "houses average price" do
  house1 = House.new(450000,400000,2500)
  house2 = House.new(400000,350000,2500)
  city.houses << house1
  city.houses << house2

    expect(city.avg_home).to eq ("The average price of a home is $425000.")
  end

  it "maximum price of home that exists" do 
  house1 = House.new(450000,400000,2500)
  house2 = House.new(400000,350000,2500)
  city.houses << house1
  city.houses << house2
    expect(city.max_city_price).to eq("The maximum price of a home is $450000.")
  end

  it "minimum price of a home that exists" do 
  house1 = House.new(450000,400000,2500)
  house2 = House.new(400000,350000,2500)
  city.houses << house1
  city.houses << house2
  expect(city.min_city_price).to eq("The minimum price of a home is $400000.")
  end

  it "house market percent price increase that was seen between this year and last" do
  house1 = House.new(450000,400000,2500)
  house2 = House.new(400000,350000,2500)
  city.houses << house1
  city.houses << house2
  expect(city.market_value_increase).to eq ("The housing market's average price changed by 13 percent this year.")
  end 

  it "properly outputs all the statisitcs of that city." do 
  house1 = House.new(450000,400000,2500)
  house2 = House.new(400000,350000,2500)
  city.houses << house1
  city.houses << house2
  expect(city.output_city).to eq ("The average price of a home is $425000. The maximum price of a home is $450000. The minimum price of a home is $400000. The housing market's average price changed by 13 percent this year.")
  end 

  it "total value of houses" do 
  house1 = House.new(450000,400000,2500)
  house2 = House.new(400000,350000,2500)
  city.houses << house1
  city.houses << house2
  expect(city.total_value).to eq (850000)
  end

  it "average price per square foot that is seen in the city." do 
  house1 = House.new(450000,400000,2500)
  house2 = House.new(400000,350000,2500)
  city.houses << house1
  city.houses << house2
  expect(city.price_per_foot).to be > 10
  end

end