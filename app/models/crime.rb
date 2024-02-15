class Crime < ApplicationRecord
  has_many :charges # crime.charges
  has_many :criminals, through: :charges # crime.criminals
  has_many :prisons, through: :criminals # crime.prisons
  validates :name, presence: true, uniqueness: true

  def to_label
    name.capitalize
  end
end
