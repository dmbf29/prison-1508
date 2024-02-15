class Criminal < ApplicationRecord
  belongs_to :prison # criminal.prison
  has_many :charges, dependent: :destroy # criminal.charges
  has_many :crimes, through: :charges # criminal.crimes
  validates :name, presence: true
end
