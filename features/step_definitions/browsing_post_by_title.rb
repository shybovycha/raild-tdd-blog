require 'uri'

Given /^post title='(.+)'$/ do |post_title|
    @post = get_post_by_title post_title
end

When /^I navigate to '\/posts\/view\/(\D.+)'$/ do |post_title|
    visit URI.escape("/posts/view/#{ post_title }")
end
