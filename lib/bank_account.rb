class BankAccount

    attr_accessor :balance, :status, :deposit, :transfer, :withdrawal, :amount
    attr_reader :name

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(deposit)
        #1. Can deposit money into account
        @balance += deposit
    end

    def display_balance
        @balance = balance
        "Your balance is $#{self.balance}."
    end

    def valid?
        #1.Is valid with an open status and a balance greater than 0 
        if self.balance > 0 && self.status == "open"
            true 
        else
            false
        end

    end

    def close_account 
        @status = "closed"
    end

end
