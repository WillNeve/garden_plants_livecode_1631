class Plant < ApplicationRecord
  belongs_to :gorden

  validates :name, presence: true
end
