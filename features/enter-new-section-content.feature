Feature: Enter new content for a section

  Scenario: User replaces a section's content during tailoring
    Given an active tailoring session with a parsed section "Summary" containing its original text
    When the user enters new text for "Summary" and confirms it
    Then the tailored resume uses the new text for "Summary" instead of the original
    And the section is marked as reviewed
