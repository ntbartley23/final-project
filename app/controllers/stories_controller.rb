class StoriesController < ApplicationController

	def new
		@story = Story.new
	end

	def create
	  @story = Story.new(story_params)
		if @story.save
			flash[:notice] = "New Story Added"
			redirect_to stories_path(@story)
		else
			flash[:alert] = "Error"
			redirect_to :back	
		end	
    end

    def index
    	@stories = Story.all
    end


	def show
		@story = Story.find(params[:id])
		
		
	end

	def edit
		@story = Story.find(params[:id])
	end

	def update
		@story = Story.find(params[:id])
	end
	
	 def destroy
	 	 @story = Story.find(params[:id])
	 		if@story.destroy
	 			flash[:notice] = "Student Deleted"
	 		else
	 			flash[:notice] = "Error"
	 			redirect_to :back
	 		end	
	 end	


	 private
	 
	 def story_params
	 	params.require(:story).permit(:book_title)
	 end


	
end
