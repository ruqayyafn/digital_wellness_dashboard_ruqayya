class ScenariosController < ApplicationController
  def index
    @scenarios = Scenario.all
  end

  def show
    @scenario = Scenario.find(params[:id])
    @story_part = @scenario.story_parts.first # Start with the first story part
  end
end
