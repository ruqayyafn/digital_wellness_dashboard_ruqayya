class Choice < ApplicationRecord
  belongs_to :story_part  
  validates :choice_text, presence: true
  validates :evaluation_text, presence: true
end
