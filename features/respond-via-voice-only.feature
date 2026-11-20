Feature: Respond to a question using voice only

  Scenario: User answers a spoken question by voice
    Given the platform has just played a question aloud
    When the user speaks their answer aloud
    Then the platform records and transcribes the spoken answer
    And the text input field for answering remains disabled during the session
