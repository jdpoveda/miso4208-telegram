Feature: Registration feature

  Scenario: As a user I can enter my phone number in the app
    Given I press "START MESSAGING"
    When I clear input field number 1
    And I enter "57" into input field number 1
    When I clear input field number 2
    # A valid phone number must be provided to register/login, you'll receive a SMS.
    And I enter "3132217697" into input field number 2
    And I press the enter button
    # During this time you need to simulate a SMS in the android Emulator with the number and content of the SMS that you received in your actual device.
    And I wait for 40 seconds
    Then I should not see "Phone number"

    Given I see the text "Your Name"
    When I enter "FirstName Test" into input field number 1
    And I enter "LastName Test" into input field number 2
    And I press the enter button
    Then I should see "Phone verification"

