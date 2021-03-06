Feature: Creating invalid comments
    In order to make sure my blog works
    As a blog owner
    I want to try to create invalid comment and make sure it is not created

    Scenario: Create invalid comment
        Given post id=3
        When I navigate to '/posts/view/id/3'
        And I click the 'add comment' link
        And fill comment body field with 'z'
        And click the 'add comment' button
        Then comment should not appear