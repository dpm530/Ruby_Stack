class SessionsController < ApplicationController

   def create
      @user=Lender.find_by_email(params[:email])

      if @user.nil?

         @user=Borrower.find_by_email(params[:email])

         if @user.nil?
            flash[:login_error] = "Could not find a user with that email and password combination"
            return redirect_to '/login'
         else
            session[:user_type] = 'borrower'
            session[:user_id] = @user.id
            return redirect_to borrowers_path
         end

      else
         session[:user_type] = 'lender'
         session[:user_id] = @user.id
         return redirect_to lenders_path

      end

   end

   def destroy
      
      session[:user_id] = nil
      session[:user_type] = nil
      flash[:message] = 'You have successfully logged out'
      return redirect_to '/'

   end



end
