class Exercise < ApplicationRecord
    belongs_to :day
    has_one :person, through: :day
end
