Feature: Browsing posts list
    In order to make sure my blog works
    As a blog reader
    I want to list all my posts on one page

    Scenario: Browsing posts list
        Given posts list
        When I navigate to the home page
        Then I should see all the posts
