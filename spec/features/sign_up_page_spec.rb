require 'rails_helper'

describe 'Sign up Page' do
  before do
    @sign_up_page = SignUpPage.new
    @sign_up_page.load
  end
  it 'information sign up page' do
    @sign_up_page.search_location.set "ABC - Chicago"
    @sign_up_page.search_button.click

    select_location_sign_up
  end
end
