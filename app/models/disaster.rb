class Disaster < ApplicationRecord
  validates_presence_of :disaster_type

  has_many :post
end
