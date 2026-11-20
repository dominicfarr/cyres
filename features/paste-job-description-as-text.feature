Feature: Paste job description as text

  Scenario: User pastes a job description
    Given the user is on the "Tailor Resume" screen
    When they paste job description text into the JD field and submit it
    Then the platform stores the JD text as the active job description for this tailoring session
