When /^I fill in only title field$/ do
    @invalid_post_title = 'invalid post title'
    fill_in('Title', :with => @invalid_post_title)
end

Then /^post should not appear at the top of the posts list$/ do
    visit '/'

    page.has_no_content? @invalid_post_title
end