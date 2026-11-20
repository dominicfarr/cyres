Feature: Auto-split resume into standard sections

  Scenario: Platform parses an uploaded resume into sections
    Given a resume PDF has been uploaded and stored
    When the platform parses it
    Then it produces a set of labeled sections, including at least "Heading", "Summary", and "Core Skills"
    And each section's original text is preserved under its label
