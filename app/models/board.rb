class Board < ApplicationRecord
  validates :date, uniqueness: true, presence: true
end
