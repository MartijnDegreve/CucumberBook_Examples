class Account 
    def deposit(amount)
        @balance = amount
    end

    def balance
        @balance
    end
end
class Teller
    def withdraw_from(account,amount)
    end
end
module KnowsMyAccount
    def my_account 
        @my_account ||= Account.new
    end
end
World(KnowsMyAccount)
module MyCustomHelperModule
    def my_helper_method
    end
end
World(MyCustomHelperModule)


Given("I have deposited ${int} in my account") do |amount|
    my_account.deposit(amount)
     expect(my_account.balance).to eq(amount),
        "Expected the balance to be #{amount} but it was #{my_account.balance}"
end
When("I withdraw ${int}") do |amount|
    teller = Teller.new
    teller.withdraw_from(my_account, amount)
end
Then("${int} should be dispensed") do |int|
    pending # Write code here that turns the phrase above into concrete actions
end