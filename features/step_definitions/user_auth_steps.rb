Given(/^I am not logged in$/) do
  # not logged in
end

Given(/^I have a valid account$/) do
  User.create!(email: 'user@example.com', password: 'password')
end
