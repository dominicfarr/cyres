Feature: Score an individual voice answer

  Scenario: Platform scores a transcribed answer
    Given the user's spoken answer to a question has been transcribed
    When the platform evaluates the answer's depth and relevance to the question
    Then it assigns the answer a quality score between 0 and 100
