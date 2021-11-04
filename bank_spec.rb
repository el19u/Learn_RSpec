require "./bank_account.rb"

RSpec.describe BankAccount do
  context "deposit money" do
    it "存錢功能" do
      account = BankAccount.new(10)
      account.deposit(5)
      
      expect account.balance == 15
    end

    it "不可存0,負數" do
      account = BankAccount.new(10)
      expect {(account.deposit(-1))}.to raise_exception BankError
    end
  end

  context "withdrow money" do
    it "領錢功能" do
      account = BankAccount.new(10)
      money = account.withdraw(3)

      expect (money) == 3
      expect (account.balance) == 7
    end

    it "不可領超過餘額" do
      account = BankAccount.new(10)
      
      expect {(account.withdraw(20))}.to raise_exception BankError
    end

    it "不可領負數" do
      account = BankAccount.new(10)
      
      expect {(account.withdraw(-1))}.to raise_exception BankError
    end

  end

end