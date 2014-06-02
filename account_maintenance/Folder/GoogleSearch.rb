require “rubygems”
require “watir”

Given /^that I have gone to the Google page$/ do
@browser=Watir::IE.new
@browser.goto(“www.google.com”)
end

When /^I add “(.*)” to the search box$/ do |item|
@browser.text_field(:name,”q”).set( item)

end

And /^click the Search Button$/ do
@browser.button(:name, “btnG”).click
end

Then /^”(.*)” should be mentioned in the results$/ do |item|
@browser.text.should include(item)
end