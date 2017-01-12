require 'rails_helper'

describe 'Home Page' do
  before do
    @home_page = HomePage.new
    @home_page.load
  end
  it 'search for fooda location based on location keywords' do
    @home_page.form_search.search_field.set "ABC - Chicago"
    @home_page.form_search.submit_button.click

    select_location_sign_up
  end
end
