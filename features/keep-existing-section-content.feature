Feature: Keep existing section content as-is

  Scenario: User keeps a section unchanged while tailoring
    Given an active tailoring session with a parsed section "Core Skills" containing its original text
    When the user chooses "Keep" for the "Core Skills" section
    Then the tailored resume uses the original "Core Skills" text unchanged
    And the section is marked as reviewed
