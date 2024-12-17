class ChoicesController < ApplicationController

    def create
      @scenario = Scenario.find(params[:scenario_id])
      @story_part = StoryPart.find(params[:story_part_id])
      @choice = Choice.find(params[:choice_id])
  
      # Find next story part (if exists)
      next_story_part = @scenario.story_parts
        .where('part_number > ?', @story_part.part_number)
        .order(:part_number)
        .first
  
      if next_story_part
        # Redirect to next story part
        redirect_to scenario_path(@scenario, story_part_id: next_story_part.id)
      else
        # Redirect to scenario summary instead of rendering a non-existent view
        redirect_to summary_scenario_path(@scenario)
      end
    end
  end