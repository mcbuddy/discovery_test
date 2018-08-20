# ../features/add_favorite.feature

Feature: As user I want to add a video to my favorite list

  Scenario Outline: Add Video to favorite
    Given I am at Discovery homepage
    When I add first_video to my favorite on the <section> section
    And I add second_video to my favorite on the <section> section
    And I go to my-video page
    Then I should see first_video on my favorite list
    And I should see second_video on my favorite list

    Examples:
    |     section          |
    |"RECOMMENDED FOR YOU" |