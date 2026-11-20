Feature: Upload resume as PDF

  Scenario: User uploads a valid PDF resume
    Given the user has a resume file "resume.pdf" on their device
    When they upload it to the platform
    Then the platform stores it as the current resume source
    And confirms the upload succeeded
