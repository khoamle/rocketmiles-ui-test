class LoginPage < SitePrism::Page
  set_url "https://app.fooda.com/login"
  
  section :new_user_form, "#new_user" do
    element :user_email, "input[id=user_email]"
    element :user_password, "input[id=user_password]"
    element :submit_button, "input[type='submit']"
  end
end
