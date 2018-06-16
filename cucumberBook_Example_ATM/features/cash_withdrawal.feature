Feature: Cash Withdrawal
    Scenario: Succesfull withdrawel from an account in credit
        Given My account had been credited with $100 
        When I withdraw $20
        Then $20 should be dispensed
        Then The balance of my account should be $80