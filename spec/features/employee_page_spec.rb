require 'rails_helper'

describe 'For Employee Page' do
  before do
    @employee_page = EmployeePage.new
    @employee_page.load
  end
  it 'click contact fooda link' do
    @employee_page.contact_fooda_link.click
    contact_us_form
  end
end
