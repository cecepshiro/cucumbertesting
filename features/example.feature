Feature: Homepage navigation bar links checks

    Scenario: Check kloia.com has about page
        Given visit homepage
        When click "About" link
        Then page should contains "About Us" content