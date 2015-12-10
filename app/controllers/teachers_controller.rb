class TeachersController < ApplicationController

def new
	@teacher = Teacher.new

	end

	def create
		@teacher = Teacher.new(teacher_params)
		 if @teacher.save
		 	flash[:notice] = "New teacher created"
		 	redirect_to teacher_path(@teacher)
		 else
		 	flash[:alert] = "Error"
		 	redirect_to :back
		 end
	end

	def show
		@teacher = Teacher.find(params[:id])
	end

	def edit
		@teacher = Teacher.find(params[:id])
	end

	def update
		@teacher = Teacher.find(params[:id])
	end
	
	 def destroy
	 	@teacher = Teacher.find(params[:id])
	 		if@teacher.destroy
	 			flash[:notice] = "Teacher deleted"
	 		else
	 			flash[:notice] = "Error"
	 			redirect_to :back
	 		end	
	 end	

	 private
	 
	 def teacher_params
	 	params.require(:teacher).permit(:fname, :lname, :email, :password, :address, :sname, :saddress)
	 end





end
