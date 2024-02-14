class Prison < ApplicationRecord
  has_many :criminals # prison.criminals
  validates :name, presence: true
end
