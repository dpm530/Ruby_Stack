class DojosController < ApplicationController

  def index
     @dojos=Dojo.all
  end

  def new
  end

  def create

     @dojo=Dojo.create(dojo_params)

     redirect_to '/'
  end
  
  private
   def dojo_params
      params.require(:new).permit(:branch,:street,:city,:state)
   end


end
