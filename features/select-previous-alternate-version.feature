Feature: Select a previously stored alternate version

  Scenario: Previously stored versions are available when reviewing a section
    Given the section "Summary" has 2 previously stored named versions in the library, "Summary v1" and "Summary v2", plus the current version
    When the user opens the "Summary" section for review
    Then the platform lists "Summary v1" and "Summary v2" as selectable alternates alongside the current version

  Scenario: User selects a previously stored version
    Given the "Summary" section review screen is listing "Summary v1" as a selectable alternate
    When the user selects "Summary v1"
    Then the tailored resume uses the text of "Summary v1" for the "Summary" section
    And the section is marked as reviewed
