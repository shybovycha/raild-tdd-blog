Feature: Editing posts
    In order to make sure my blog works
    As a blog owner
    I want to edit my posts

    Scenario: Edit post
        Given a post with id=1
        And backoffice page
        When I change fields values on the backoffice page
        And click save button
        Then post should change on the posts list