Given('visit homepage') do
  visit '/'
end

When('click {string} link') do |string|
  click_link(string, match: :first)
end

Then('page should contains {string} content') do |text|
  page.should have_content(text)
end