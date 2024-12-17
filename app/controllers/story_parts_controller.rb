class StoryPartsController < ApplicationController
  before_action :set_scenario
  before_action :set_story_part, only: [:show, :update]

  def show
    @story_part = StoryPart.find(params[:id])
    @choices = @story_part.choices
    flash.clear if @story_part.part_number == 1
    render :show
  end

  def update
    @story_part = StoryPart.find(params[:id])
    @choice = Choice.find(params[:story_part][:choice_id])
  
    # Set the next story part for the same scenario
    next_story_part = @story_part.next_story_part
    
    flash[:notice] = "Based on your choice: #{@choice.evaluation_text}"

    if next_story_part
      # Redirect to the next story part if it exists
      redirect_to scenario_story_part_path(@story_part.scenario, next_story_part)
    else
      # If no next story part, set a flag to show the "Learn More" button
      @show_learn_more_button = true
      render :show
    end
  end
   
  
  private

def set_scenario
  @scenario = Scenario.find(params[:scenario_id])
end


  def set_story_part
    @story_part = StoryPart.find(params[:id])
  end
end
