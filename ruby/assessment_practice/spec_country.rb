
require_relative 'country'

describe Country do
  let(:country) { Country.new }

  it "list of cities within the country" do
    country.instance_creation
    expect(country.make_city_list).to eq (["edmonton", "calgary", "vancouver", "toronto"])
  end


end