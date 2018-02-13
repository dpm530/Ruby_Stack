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

  def show
     @dojos=Dojo.find(params[:id])
     @students=@dojos.students
  end

  def edit
     @dojos=Dojo.find(params[:id])

  end

  def update
     dojo=Dojo.find(params[:id])
     dojo.branch=params[:branch]
     dojo.street=params[:street]
     dojo.city=params[:city]
     dojo.state=params[:state]
     dojo.save
     redirect_to '/'
  end

  def delete
     dojo=Dojo.find(params[:id])
     dojo.destroy
     redirect_to '/'
  end

  private
   def dojo_params
      params.require(:new).permit(:branch,:street,:city,:state)
   end


end
