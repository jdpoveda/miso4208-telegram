Feature: Login feature

  Scenario: As a user I can login in the app
    Given I press "START MESSAGING"
    When I clear input field number 1
    And I enter "57" into input field number 1
    When I clear input field number 2
    # A valid phone number must be provided to register/login, you'll receive a SMS.
    And I enter "3204576042" into input field number 2
    And I press the enter button
    # During this time you need to simulate a SMS in the android Emulator with the number and content of the SMS that you received in your actual device.
    And I wait for 40 seconds
    Then I should not see "Phone number"

    Given I see the text "Phone verification"
    When I wait for 2 seconds
    Then I should see "Phone verification"

