describe City do

  before(:each) { @city = City.new(name: 'London', short_name: 'Ld') }

  subject { @city }

  it { should respond_to(:short_name) }

  it "#name returns a string" do
    expect(@city.name).to match 'London'
  end

end
