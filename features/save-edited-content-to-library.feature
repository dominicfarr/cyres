Feature: Save edited section content to the library

  Scenario: Edited section content becomes reusable
    Given the user replaced the "Summary" section's content during tailoring
    When the tailoring session is saved
    Then the new "Summary" text is added to the resume library as a stored item under "Summary"
    And it remains available as library content after the session ends
