class User < ApplicationRecord
  has_many :flights, through: 'reservations'
  has_many :reservations
end
