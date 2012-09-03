Given /^post id=(\d+)$/ do |post_id|
    @post = get_post_by_id post_id
end

When /^I navigate to '\/posts\/view\/id\/(\d+)'$/ do |post_id|
    visit "/posts/view/id/#{ post_id }"
end

Then /^I should see my post$/ do
    assert page.has_content? @post.body
end