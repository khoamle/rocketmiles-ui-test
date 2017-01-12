require 'rails_helper'

describe 'Login Page' do
  before do
    @login_page = LoginPage.new
    @login_page.load
  end
  it 'login with credentials' do
    @login_page.new_user_form.user_email.set "iTestThisWebsite@gmail.com"
    @login_page.new_user_form.user_password.set "password"
    @login_page.new_user_form.submit_button.click
    expect(@login_page.current_url).to eq("https://app.fooda.com/my")
  end
end
