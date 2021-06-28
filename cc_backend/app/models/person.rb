class Person < ApplicationRecord
    has_many :days
    has_many :exercises, through: :days
end
