require 'rails_helper'

describe 'Sign Up Page iPhone' do
  before do
    Capybara.current_session.driver.browser.manage.window.resize_to(375, 667)
    @sign_up_page = SignUpPage.new
    @sign_up_page.load
  end
  it 'search for fooda location based on location keywords' do
    @sign_up_page.search_location.set "ABC - Chicago"
    @sign_up_page.search_button.click

    select_location_sign_up
  end
end
