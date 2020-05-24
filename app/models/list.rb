class List < ApplicationRecord
  has_many :dog

  validates :status, presence: true
  
end
