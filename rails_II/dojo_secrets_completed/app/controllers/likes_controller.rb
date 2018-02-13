class LikesController < ApplicationController

  def create
     @secret=Secret.find(params[:id])
     Like.create(user: current_user, secret: @secret)

     return redirect_to '/secrets/index'
  end

  def destroy
     @secret=Secret.find(params[:id])
     @like=Like.find_by(user: current_user, secret: @secret)

     @like.destroy if @like

     return redirect_to '/secrets/index'
  end
end
