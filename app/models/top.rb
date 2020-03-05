class Top < ApplicationRecord
  has_many :artists
  validates :artist, presence: true
end
