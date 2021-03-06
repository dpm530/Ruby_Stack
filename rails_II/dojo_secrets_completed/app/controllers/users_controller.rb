class UsersController < ApplicationController
   before_action :require_login, only: [:show]
   before_action :auth, only: [:show]


   def index
   end

   def new
   end

   def create
      @user=User.new(user_params)
      if @user.save
         session[:user_id]=@user.id

         return redirect_to "/users/#{@user.id}"
      end
      flash[:errors]=@user.errors.full_messages

      return redirect_to :back
   end

   def edit
      @user=User.find(params[:id])
   end

   def update
      user=User.find(params[:id])
      user.first_name=params[:first_name]
      user.last_name=params[:last_name]
      user.save

      return redirect_to "/users/#{user.id}"
   end

   def destroy
      user=User.find(params[:id])
      user.destroy
      session.clear

      return redirect_to "/register"

   end

   def show
      @user=User.find(params[:id])
      @secrets=Secret.where(user:@user)
      @secrets_liked=@user.secrets_liked

   end

   private
      def user_params
         params.require(:user).permit(:first_name, :last_name,:email, :password,:password_confirmation)
      end

      def auth
         return redirect_to "/users/#{current_user.id}"  unless current_user.id==params[:id].to_i
      end
end
