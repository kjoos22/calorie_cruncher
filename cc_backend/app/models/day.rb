class Day < ApplicationRecord
    belongs_to :person
    has_many :exercises
end
