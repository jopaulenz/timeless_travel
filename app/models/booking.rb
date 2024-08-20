class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :time_travel
  has_many :reviews, dependent: :destroy
  validates :start_date, :end_date, presence: true
end
