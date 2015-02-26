feature 'Edit City', :devise do

  scenario 'user can edit city' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    city = FactoryGirl.create(:city)
    visit edit_city_path(city)
    fill_in 'city_name', :with => 'New York'
    fill_in 'city_short_name', :with => 'Ny'
    click_button 'Update City'
    expect(page).to have_content "Name: New York"
  end

end