Given /^a post with id=(\d+)$/ do |post_id|
    @post = Post.find_by_id post_id

    visit "/posts/view/id/#{ post_id }"
end

When /^I click delete link$/ do
    find("a#delete_post_#{ @post.id }").click
end

Then /^post should disappear from the posts list$/ do
    visit '/'

    assert page.has_no_content? @post.body
end
