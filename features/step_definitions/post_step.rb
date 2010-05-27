Before do |scenario|
  @snuggsi=Snuggsi::World.new
end

AfterStep do |scenario|; end

After do |scenario|
  if(scenario.failed?)
    puts "Damn this really sucks!\n#{scenario.exception.message}"
  end
end

Given /^the following users? information:$/ do |table|
  table.hashes.each do |attributes|
    @user_information = attributes
  end
end

Given /^I am logged in to my Snuggsi Account$/ do
  
end

When /^I create content that inherits from thingi$/ do
#  @thingi=Thingi.new({ :name => 'Thingi Name', :description => 'The quick brown fox jumped over the lazy dog' })
end

Then /^I can post the content$/ do
#  Post.new({:title  => 'Post Title', 
#            :author => 'Snuggs', 
#            :body   => 'The quick brown fox jumped over the lazy dog'})
            # @thingi.attributes
end

Then /^the content is now accessible to the public$/ do
#  pending
end

Then /^shows up at the top of list for all Posts$/ do
  # pending express the regexp above with the code you wish you had
end

Given /^I am logged in to my Snuggsi Account as snuggs and temp:$/ do
 # pending
end

Given /^my email address is returned as snuggs@snuggsi\.com$/ do
  # pending
end

