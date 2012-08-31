Feature: Browsing post by id
    As a blog reader
    I want to show post by its id

    Scenario: Browsing post by id
        Given post id=3
        When I navigate to '/posts/view/3'
        Then I should see my post
