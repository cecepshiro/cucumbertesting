require 'colorize'

# Invalid
Given(/^I am on the Guru99 homepage$/) do
    visit '/'
end

When(/^enter blank details for Register$/) do
    fill_in "emailid",with: ' '
    click_button  "btnLogin"
end

Then(/^error email shown$/) do
  puts "Email is Required".red
end

# Valid
When (/^enter details for Register$/) do
    visit '/'
    fill_in "emailid",with: 'guru99@gmail.com'
    click_button  "btnLogin"
    page.find('h2', text: /Access details to demo site/i)
end

Then (/^login details shown$/) do
    puts " Sucessfully register".blue
end