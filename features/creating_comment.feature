Feature: Creting comments
    As a blog reader
    I want to add a comment to particular post

    Scenario: Adding a comment
        Given a post with id=2
        When I click the 'add comment' link
        And fill all the fields needed
        And click the 'add comment' button
        Then I should see my comment