Given /^backoffice page$/ do
    visit '/backoffice'
end

When /^I fill in fields required$/ do
    @new_post_body = 'my new, cool post'
    find(:css, "textarea[name='post[body]']").set(@new_post_body)

    @new_post_title = 'a new post!'
    find(:css, "input[name='post[title]']").set(@new_post_title)
end

When /^click save button$/ do
    find_button('Save').click
end

Then /^post should appear at the top of the posts list$/ do
    visit '/'
    assert page.has_content? @new_post_title
    assert page.has_content? @new_post_body
end