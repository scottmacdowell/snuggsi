Given /^the following user records?:$/ do |table|
  # table is a Cucumber::Ast::Table
 # pending  express the regexp above with the code you wish you had
end

Given /^I am the following user logged in to my Snuggsi Account:$/ do |table|
  # table is a Cucumber::Ast::Table
 # pending
end

Given /^I am logged in to my Snuggsi Account as snuggs and temp:$/ do
 # pending
end

Given /^my email address is returned as snuggs@snuggsi\.com$/ do
  # pending
end

When /^I create content that inherits from thingi$/ do
  @thingi=Thingi.new
end

Then /^I can post the content$/ do
  Post.new({:title  => 'Post Title', 
            :author => 'Snuggs', 
            :body   => 'The quick brown fox jumped over the lazy dog'})
            # @thingi.attributes
end

Then /^the content is now accessible to the public$/ do
#  pending
end

Then /^shows up at the top of list for all Posts$/ do
  # pending express the regexp above with the code you wish you had
end
