feature 'New City', :devise do

  scenario 'user can add city' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    city = FactoryGirl.create(:city)
    visit new_city_path
    fill_in 'city_name', :with => 'London'
    fill_in 'city_short_name', :with => 'Ld'
    click_button 'Create City'
    expect(page).to have_content "Name: London"
  end

end