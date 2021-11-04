class BankError < StandardError

end

class BankDepositError < BankError
  
end

class BankWithdrawError < BankError

end