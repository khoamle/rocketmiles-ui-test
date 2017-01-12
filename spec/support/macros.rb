require 'rails_helper'

def select_location_sign_up
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email
  password = Faker::Internet.password(8)

  within(:css, "#search-results") do
    find('[for=account_2294_building_2121]').click
    find("input[type='submit']").click
  end

  within(:css, "#new_user") do
    page.fill_in 'user_first_name', :with => first_name
    page.fill_in 'user_last_name', :with => last_name
    page.fill_in 'user_email', :with => email
    page.fill_in 'user_password', :with => password
    page.fill_in 'user_password_confirmation', :with => password
    find("input[type='submit']").click
    expect(page.current_url).to eq("https://app.fooda.com/")
  end
end

def contact_us_form
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.safe_email
  message = Faker::Lorem.paragraph

  within(:css, "#hsForm_45869020-a7f3-416e-9cdf-0ee927d1d738") do
    page.fill_in 'firstname-45869020-a7f3-416e-9cdf-0ee927d1d738', :with => first_name
    page.fill_in 'lastname-45869020-a7f3-416e-9cdf-0ee927d1d738', :with => last_name
    page.fill_in 'email-45869020-a7f3-416e-9cdf-0ee927d1d738', :with => email
    find("option[value='I am interested in becoming a Fooda customer']").click
    page.fill_in 'message-45869020-a7f3-416e-9cdf-0ee927d1d738', :with => message
    find("input[type='submit']").click
    sleep 5
    expect(page.current_url).to include("/thank-you")
  end
end
