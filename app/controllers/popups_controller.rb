class PopupsController < ApplicationController
  before_action :set_scenario, only: [:show]

  def show
    @educational_popup = @scenario.educational_popup
    @info = @educational_popup.educational_paragraphs
  end

  private

  def set_scenario
    @scenario = Scenario.find_by(id: params[:scenario_id])
    if @scenario.nil?
      redirect_to scenarios_path, alert: "Scenario not found"
    end
  end
end
