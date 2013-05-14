Feature: Test command
  In order to run tests written with aruba
  As a user of Busser
  I want my tests to run when the aruba runner plugin is installed

  Background:
    Given a test BUSSER_ROOT directory named "busser-aruba-test"
    When I successfully run `busser plugin install busser-aruba --force-postinstall`
    Given a suite directory named "aruba"

  Scenario: A passing test suite
    Given a file in suite "aruba" named "<YOUR_FILE>" with:
    """
    TEST FILE CONTENT

    A good test might be a simple passing statement
    """
    When I run `busser test aruba`
    Then I should verify some output for the aruba plugin
    And the exit status should be 0

  Scenario: A failing test suite
    Given a file in suite "aruba" named "<YOUR_FILE>" with:
    """
    TEST FILE CONTENT

    A good test might be a failing test case, raised exception, etc.
    """
    When I run `busser test aruba`
    Then I should verify some output for the aruba plugin
    And the exit status should not be 0
