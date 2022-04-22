class Car < ApplicationRecord
    has_many :colors
    store_accessor :range, %i[unit distance]
end
