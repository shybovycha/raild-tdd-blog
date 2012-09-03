When /^fill comment body field with '(.+)'$/ do |comment_body|
    @comment_body = comment_body
    find(:css, "textarea[name='comment[body]']").set(@comment_body)
end

Then /^comment should not appear$/ do
    assert (not find(:css, ".comment-container .body", :regexp => Regexp.new("^#{ @comment_body }$")).nil?)
end