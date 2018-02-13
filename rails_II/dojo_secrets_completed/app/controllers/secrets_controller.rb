class SecretsController < ApplicationController
   def index
      @secrets=Secret.all
      
   end

   def create
      @user = current_user
      @secret = Secret.new(content: params[:content], user: @user)
      unless @secret.save
         flash[:errors]=@secret.errors.full_messages
      end
      return redirect_to "/users/#{@user.id}"
   end

   def destroy
      @secret=Secret.find(params[:id])
      if @secret.user==current_user
         @secret.destroy
      end
      return redirect_to :back

   end


end
