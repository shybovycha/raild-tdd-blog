Feature: Creating posts
    In order to make sure my blog works
    As a blog owner
    I want to create posts

    Scenario: Create post
        Given backoffice page
        When I fill in fields required
        And click save button
        Then post should appear at the top of the posts list