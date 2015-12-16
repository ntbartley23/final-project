class StudentsController < ApplicationController


	def	new
	@student = Student.new
	end

	def create
	  @student = Student.new(student_params)
	   if @student.save
	   	 flash[:notice] = "New student created."
	   	 redirect_to student_path(@student)
	   else
	   	 flash[:notice] = "Error"
	   	  redirect_to :back
	   end

	end

	def show
	 @student = Student.find(params[:id])
	end

	def edit

	end

	def update
	end
	
	 def destroy
	 	@student = Student.find(params[:id])
	 	 if @student.destroy
	 	 	flash[:notice] = "Student successfully deleted."
	 	 	redirect_to teachers_path(@teacher)
	 	 else
	 	 	flash[:notice] = "Error. Please try again."
	 	 	redirect_to :back	
	 	 	
	 	 end
	 end	







	
end
