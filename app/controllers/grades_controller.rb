class GradesController < ApplicationController

 def index
 	@grade = Grade.all
 end

  def new
  	@grade = Grade.new
  end 

   def create
   	@grade = Grade.new(grade_params)
		 if @grade.save
		 	flash[:notice] = "Grade added"
		 	redirect_to teacher_path(@teacher)
		 else
		 	flash[:alert] = "Error"
		 	redirect_to :back
		 end
   end

  def show
  	@student = Student.find(params[:id])
  end


end
