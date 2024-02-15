class Charge < ApplicationRecord
  belongs_to :crime # charge.crime
  belongs_to :criminal # charge.criminal
  validates :criminal, uniqueness: { scope: :crime }
end
