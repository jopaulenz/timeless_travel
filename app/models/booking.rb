class Booking < ApplicationRecord
  belongs_to :time_travel
  belongs_to :user
end
