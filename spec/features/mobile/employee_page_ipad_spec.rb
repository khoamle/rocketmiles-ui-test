require 'rails_helper'

describe 'For Employee Page iPad screen size' do
  before do
    Capybara.current_session.driver.browser.manage.window.resize_to(768, 1024)
    @employee_page = EmployeePage.new
    @employee_page.load
  end
  it 'click contact fooda link' do
    @employee_page.contact_fooda_link.click
    contact_us_form
  end
end
