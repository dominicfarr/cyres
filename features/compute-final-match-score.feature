Feature: Compute final match score

  Scenario: Platform computes an overall match score after all questions are answered
    Given all 3 questions in the interview prep session have been scored
    When the platform computes the final match score
    Then it returns a single score between 0 and 100 based on the 3 per-answer scores
    And displays it to the user as the match score for this job description
