Feature: Hear a question via speech

  Scenario: User listens to a generated question
    Given 3 interview questions have been generated for the active job description
    When the user starts the interview prep session
    Then the platform plays the first question aloud as audio
