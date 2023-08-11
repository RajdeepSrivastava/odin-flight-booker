class Booking < ApplicationRecord
    belongs_to :flight
    has_many :passengers
    accepts_nested_attributes_for :passengers

    attr_accessor :passenger_count

  end
  