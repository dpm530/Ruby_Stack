require_relative 'bank_account'

RSpec.describe BankAccount do
   before(:each) do
      @test1=BankAccount.new
   end

   it 'has a getter method for checking account balance' do
      expect(@test1.checking_account).to eq(0)
   end

   it 'has a getter method that retrieves the total account balance' do
      expect(@test1.total).to eq("Checking Balance: 0\nSaving Balance: 0\nTotal Balance: 0")
   end

   context "withdrawing money" do
      it 'raises an error if the user tries to withdraw more money than they have in the checking account' do
         expect{@test1.withdrawal("checking_account",150)}.to raise_error("Insufficient Funds, you have 0 in this account")
      end

      it 'raises an error if the user tries to withdraw more money than they have in the savings account' do
         expect{@test1.withdrawal("savings_account",150)}.to raise_error("Insufficient Funds, you have 0 in this account")
      end

   end

   it "raises an error when the user attempts to retrieve the total number of bank  accounts" do
      expect{@test1.number_of_accounts}.to raise_error(NoMethodError)
   end

   it "raises an error when the user attempts to set the interest rate" do
      expect{@test1.interest_rate}.to raise_error(NoMethodError)
   end

end
