Given /^backoffice page$/ do
    visit '/backoffice'
end

When /^I fill in fields required$/ do
    @new_post_body = 'my new, cool post'
    fill_in 'Post body', :with => @new_post_body
end

When /^click save button$/ do
    find_button('Save').click
end

Then /^post should appear at the top of the posts list$/ do
    visit '/'
    page.has_content? @new_post_body
end