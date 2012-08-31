Feature: Creating invalid posts
    In order to make sure my blog works
    As a blog owner
    I want to try to create invalid post and make sure it is not created

    Scenario: Create invalid post
        Given backoffice page
        When I fill in only title field
        And click save button
        Then post should not appear at the top of the posts list