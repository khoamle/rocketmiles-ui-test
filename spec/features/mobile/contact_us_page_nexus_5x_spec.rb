require 'rails_helper'

describe 'Contact Us Page mobile android nexus 5x screen size' do
  before do
    Capybara.current_session.driver.browser.manage.window.resize_to(412, 732)
    @contact_us_page = ContactUsPage.new
    @contact_us_page.load
  end
  it 'fill out contact us form and send message' do
    contact_us_form
  end
end
