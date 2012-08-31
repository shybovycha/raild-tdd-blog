When /^fill comment body field with '(.+)'$/ do |comment_body|
    @comment_body = comment_body
    fill_in 'textarea[name=comment\\[body\\]]', :with => @comment_body
end

Then /^comment should not appear$/ do
    page.should_not have_content(@comment_body)
end