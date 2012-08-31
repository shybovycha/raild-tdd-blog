When /^I change fields values on the backoffice page$/ do
    @new_post_body = 'my new, cool and spicy post'
    fill_in 'Post body', :with => @new_post_body
end

Then /^post should change on the posts list$/ do
    visit '/'

    page.should have_content(@new_post_body)
end