
  Given ("I visit the homepage") do
    visit root_path
  end



  When ("I click on register button") do
    find(:css, ".register").click
  end



  And ("I fill in signup form") do
    fill_in "user_email", :with => "cda@test.pl"
    fill_in "user_password", :with => "123456"
    fill_in "user_password_confirmation", :with => "123456"
    click_button "Sign up"
  end



  Given ("I confirm the email") do
    open_email("cda@test.pl")
    visit_in_email("Confirm my account")
  end



  Then ("I should see that my created account is confirmed") do
    message = "Your email address has been successfully confirmed."
    expect(page).to have_content(message)
  end

  Given ("I am a registered user") do
    @current_user = User.create!(:email => "test@test.pl", :password => "123456")
    open_email("test@test.pl")
    visit_in_email("Confirm my account")
  end
  When ("I fill in the login form") do
    find(:css, ".login").click
    fill_in "user_email", :with => "test@test.pl"
    fill_in "user_password", :with => "123456"
    click_button "Log in"
  end
  Then ("I should be logged in") do
    messageLogin = "Signed in successfully."
    expect(page).to have_content(messageLogin)
  end
