When /^I click the 'add comment' link$/ do
    find('a.add-comment').click
end

When /^fill all the fields needed$/ do
    @comment_body = 'my super comment'
    fill_in 'Comment body', :with => @comment_body
end

When /^click the 'add comment' button$/ do
    find('input[type=button].add-comment').click
end

Then /^I should see my comment$/ do
    page.should have_content(@comment_body)
end