Feature: Deleting posts
    In order to make sure my blog works
    As a blog owner
    I want to delete my posts

    Scenario: Deleting post
        Given a post with id=2
        And backoffice page
        When I click delete link
        Then post should disappear from the posts list