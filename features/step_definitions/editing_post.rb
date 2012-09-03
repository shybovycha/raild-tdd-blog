When /^I change fields values on the backoffice page$/ do
    @new_post_body = 'my new, cool and spicy post'
    find(:css, "textarea[name='post[body]']").set(@new_post_body)

    @new_post_title = 'an updated post'
    find(:css, "input[name='post[title]']").set(@new_post_title)
end

Then /^post should change on the posts list$/ do
    visit '/'

    assert page.has_content? @new_post_title
    assert page.has_content? @new_post_body
end