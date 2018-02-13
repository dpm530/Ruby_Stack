class LendersController < ApplicationController

   def index
   end

   def create
      @lender=Lender.new(lender_params)

      if @lender.save

         flash[:notice]=["Registered Successfully"]

         session[:user_id]=@lender.id
         session[:user_type]='lender'

         return redirect_to lenders_path
      end

      flash[:errors]=@lender.errors.full_messages

      return redirect_to :back
   end

   private
      def lender_params
         params.require(:lender).permit(:first_name, :last_name, :email, :password, :money)
      end

end
