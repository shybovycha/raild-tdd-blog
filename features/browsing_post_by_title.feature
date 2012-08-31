Feature: Browsing post by title
    As a blog reader
    I want to show post by its title

    Scenario: Browsing post by title
        Given post title='First post'
        When I navigate to '/posts/view/First post'
        Then I should see my post