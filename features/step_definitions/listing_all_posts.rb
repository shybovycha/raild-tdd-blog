Given /^posts list$/ do
    @posts = Post.all
end

When /^I navigate to the home page$/ do
    visit '/'
end

Then /^I should see all the posts$/ do
    @posts.each do |post|
        page.should have_content(post.body)
    end
end