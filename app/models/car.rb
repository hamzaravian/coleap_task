class Car < ApplicationRecord
    has_and_belongs_to_many :colors
    accepts_nested_attributes_for :colors
    store_accessor :range, %i[unit distance]
end
