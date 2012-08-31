When /^I click the 'add comment' link$/ do
    find('a.add-comment').click
end

When /^fill all the fields needed$/ do
    @comment_body = 'my super comment'
    @comment_author = 'super_author'

    fill_in '[name=comment\\[author\\]]', :with => @comment_author
    fill_in '[name=comment\\[body\\]]', :with => @comment_body
end

When /^click the 'add comment' button$/ do
    find('input[type=button].add-comment').click
end

Then /^I should see my comment$/ do
    page.has_content? @comment_author
    page.has_content? @comment_body
end