class Disaster < ApplicationRecord
  validates_presence_of :disaster_type

  belongs_to :post
end
