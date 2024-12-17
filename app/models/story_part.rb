class StoryPart < ApplicationRecord
  belongs_to :scenario
  has_many :choices, dependent: :destroy

  validates :part_number, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :content, presence: true
  def next_story_part
    StoryPart.where(scenario_id: self.scenario_id).where('part_number > ?', self.part_number).order(:part_number).first
  end

  def final_part?
    next_story_part.nil?
  end
  
end
