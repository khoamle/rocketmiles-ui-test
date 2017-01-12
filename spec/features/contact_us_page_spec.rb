require 'rails_helper'

describe 'Contact Us Page' do
  before do
    @contact_us_page = ContactUsPage.new
    @contact_us_page.load
  end
  it 'fill out contact us form and send message' do
    contact_us_form
  end
end
