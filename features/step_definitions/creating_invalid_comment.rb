When /^fill comment body field with '(.+)'$/ do |comment_body|
    @comment_body = comment_body
    find(:css, "textarea[name='comment[body]']").set(@comment_body)
end

Then /^comment should not appear$/ do
    assert page.has_no_content? @comment_body
end