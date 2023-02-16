Feature: Fibonacci number sequences

  Scenario: Default sequence initiated
    When a fibonacci sequence is started
    Then the next number should be 1

  Scenario: Initialized with a legitimate fibonacci number
    Given a fibonacci sequence initialized to 8
    Then the next number should be 13
    
  Scenario: Sequence is initialized and skipped
    Given a fibonacci sequence initialized to 2
    When the sequence is skipped 3 times
    Then the state should be "The current number is 8"
    And the next number should be 13


  Scenario: Initialized with the lowest possible number
    Given a fibonacci sequence initialized to 0
    Then the next number should be 1


  Scenario: Initialized and skipped then checked
  Given a fibonacci sequence initialized to 2
  When the sequence is skipped 4 times
  Then the state should be "The current number is 13"
  And the next number should be 21

  Scenario: Initialized to non-fibonacci number
  Given a fibonacci sequence initialized to 9
  Then it should throw an exception