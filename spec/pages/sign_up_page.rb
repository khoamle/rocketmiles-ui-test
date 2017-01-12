class SignUpPage < SitePrism::Page
  set_url "https://app.fooda.com/select_building"

  element :search_location, "#search-term"
  element :search_button, ".mag-glass"

  section :search_results, "#search-results" do
    element :select_location, '[for=account_2294_building_2121]'
    element :submit_button, "input[type='submit']"
  end

  section :new_user_form, "#new_user" do
    element :first_name, "input[id=user_first_name]"
    element :last_name, "input[id=user_last_name]"
    element :user_email, "input[id=user_email]"
    element :user_password, "input[id=user_password]"
    element :user_password_confirm, "input[id=user_password_confirmation]"
    element :submit_button, "input[type='submit']"
  end
end
