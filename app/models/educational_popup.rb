class EducationalPopup < ApplicationRecord
  belongs_to :scenario
  has_many :educational_paragraphs, dependent: :destroy
end
