
require_relative 'country'

describe Country do
  let(:country) { Country.new }

  it "list of cities within the country" do
    country.instance_creation
    expect(country.make_city_list).to eq (["edmonton", "calgary", "vancouver", "toronto"])
  end

  it "total market value" do 
  country.instance_creation
  expect(country.market_total_value).to be > 50000
  end

  it "total market value increase" do 
  country.instance_creation
  expect(country.total_market_value_increase).to be > -10
  end

end