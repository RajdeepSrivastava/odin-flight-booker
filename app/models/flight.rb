class Flight < ApplicationRecord
    belongs_to :departure_airport, class_name: "Airport"
    belongs_to :arrival_airport, class_name: "Airport"
    # belongs_to :flight
    has_many :passengers

    # accepts_nested_attributes_for :passengers
end
