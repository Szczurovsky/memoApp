
Given ("I'm a registered User") do
  @current_user = User.create!(:email => "test@test.pl", :password => "123456")
  open_email("test@test.pl")
  visit_in_email("Confirm my account")
end

And ("I am a logged in") do
  find(:css, ".login").click
  fill_in "user_email", :with => "test@test.pl"
  fill_in "user_password", :with => "123456"
  click_button "Log in"
end

And ("I have record 20 seconds in challenge with 20 digits") do
  @challenge = @current_user.challenges.create(:size => "20")
  @challenge.time = 20
  expect(@challenge.time).to have_content(20)
end

When ("I visit root path") do
  visit root_path
end

And ("I click start challenge with 20 digits") do
  find(:css, ".challenge20").click
end

And ("I click Zapamietane after 2 seconds") do
  sleep(2)
  find(:css, ".zapamietane").click

end

And ("I fill in input with correct digits") do

  fill_in "result", :with => @challenge.number
  click_button "Wyślij"
end

Then ("I should have new record  in 20 digits challenge") do
  expect(@challenge.time).to have_content(2)
end
