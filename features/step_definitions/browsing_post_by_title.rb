require 'uri'

Given /^post title='(.+)'$/ do |post_title|
    @post = get_post_by_title post_title
end

When /^I navigate to '\/posts\/view\/title\/(.+)'$/ do |post_title|
    visit URI.escape("/posts/view/title/#{ post_title }")
end
