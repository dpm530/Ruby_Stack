class ApplicationController < ActionController::Base

   protect_from_forgery with: :exception

   def index
   end

   def login
   end

   def current_user
      if (session[:user_type]=='lender')
         return Lender.find(session[:user_id])
      elsif (session[:user_type]=='borrower')
         return Borrower.find(session[:user_id])
      end

   end

   helper_method :current_user


end
