Feature: Generate a new versioned resume as PDF

  Scenario: User exports a tailored resume
    Given every section in the active tailoring session has been marked as reviewed, either kept or replaced
    When the user requests the tailored resume
    Then the platform generates a new PDF containing the reviewed section content
    And assigns it a new version number distinct from all previous resume versions
