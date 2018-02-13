class StudentsController < ApplicationController
  def new
     @dojos=Dojo.all
     @dojo=Dojo.find(params[:id])
  end

  def create
     @student=Student.create(student_params)
     redirect_to "/show/#{@student.dojo_id}"
  end

  def show
     @student = Student.find(params[:id])
     @dojos = @student.dojo
     @students = @dojos.students.all
  end

  def edit
     @student = Student.find(params[:id])
     @dojos = Dojo.all

  end

  def update
     student=Student.find(params[:dojo_id])
     student.first_name=params[:first_name]
     student.last_name=params[:last_name]
     student.email=params[:email]
     student.save
     redirect_to "/"
  end

  private
     def student_params
        params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
     end
end
