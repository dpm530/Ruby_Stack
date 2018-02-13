class BankAccount
   attr_accessor :account_number,:checking_account,:savings_account

   @@bank_account=0

   def initialize
      @account_number=create_account
      @checking_account=0
      @savings_account=0
      @@bank_account+=1
      @interest_rate = 0.01

   end

   def total
      return "Checking Balance: #{@checking_account}\nSaving Balance: #{@savings_account}\nTotal Balance: #{@checking_account + @savings_account}"
      self

   end

   def account_information
      return "Account Number: #{@account_number}\nInterest Rate: #{@interest_rate}\n#{self.total}"
      self
   end

   def self.number_of_accounts
      @@bank_accounts
      self
   end

   def deposit(account, amount)
      if account.downcase == "checking_account"
         @checking_account += amount
      else
         @savings_account += amount
      end
      self
   end

   def withdrawal(account, amount)
      if account.downcase == "checking_account"
         if @checking_account - amount < 0
            raise "Insufficient Funds, you have #{@checking_account} in this account"
         else
            @checking_account -= amount
         end
      else
         if @savings_account - amount < 0
            raise "Insufficient Funds, you have #{@savings_account} in this account"
         else
            @savings_account -= amount
         end
      end
      self
   end

   private
    def create_account
      Array.new(10).map { rand(1..9) }.join
      self
    end


end

test1=BankAccount.new
test1.deposit("checking_account",100).deposit("savings_account",100)
test1.account_information
