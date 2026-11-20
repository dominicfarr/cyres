Feature: Generate interview smoke questions

  Scenario: Platform generates questions after resume tailoring
    Given a tailored resume PDF has been generated for a job description
    When the user requests interview prep for that job description
    Then the platform generates exactly 3 questions relevant to the job description's content
