require "./bank_ErrorHendler.rb"


class BankAccount
    def initialize(amount)
        @amount = amount
    end

    def balance
        @amount
    end

    def deposit(amount)
        if amount <= 0
            raise BankDepositError.new("金錢必須大於0")
        end
        @amount += amount
    end

    def withdraw(amount)
        if amount <= 0
            raise BankWithdrawError.new("必須提領1元以上")
        end

        if amount > @amount
            raise BankWithdrawError.new("餘額不足")
        end

        @amount -= amount

        return amount

    end
end