When /^I fill in only title field$/ do
    @invalid_post_title = 'invalid post title'
    find(:css, "input[name='post[title]']").set(@invalid_post_title)
end

Then /^post should not appear at the top of the posts list$/ do
    visit '/'

    assert page.has_no_content? @invalid_post_title
end