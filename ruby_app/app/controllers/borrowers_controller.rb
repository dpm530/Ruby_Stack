class BorrowersController < ApplicationController

   def index
   end

   def create
      @borrower=Borrower.new(borrower_params)

      if @borrower.save

         flash[:notice]=["Registered Successfully"]

         session[:user_id]=@borrower.id
         session[:user_type]='borrower'

         return redirect_to borrowers_path
      end

      flash[:errors]=@borrower.errors.full_messages

      return redirect_to :back
   end

   private
      def borrower_params
         params.require(:borrower).permit(:first_name, :last_name, :email, :password, :need_money_for, :description, :amount_needed, :amount_raised)
      end

end
