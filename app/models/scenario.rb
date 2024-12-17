class Scenario < ApplicationRecord
    has_many :story_parts, dependent: :destroy    
    has_one :educational_popup, dependent: :destroy
    validates :title, presence: true
    validates :description, presence: true 
end