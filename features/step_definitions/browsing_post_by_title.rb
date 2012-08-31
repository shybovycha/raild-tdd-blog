Given /^post title='(.+)'$/ do |post_title|
    @post = get_post_by_title post_title
end

When /^I navigate to '\/posts\/view\/(.+)'$/ do |post_title|
    visit "/posts/view/#{ post_title }"
end
