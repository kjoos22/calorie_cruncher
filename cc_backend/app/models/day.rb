class Day < ApplicationRecord
    belongs_to :person
    has_many :exercises
    validates :date, :pounds, :calories_consumed, 
              :person_id, :calroies_expended, presence: true
    validates :pounds, numericality: {greater_than: 0}
    validates :calories_consumed, numericality: {only_integer: true,
                                                 greater_than: 0}
    validates :calories_expended, numericality: {only_integer: true,
                                                 greater_than: 0}
    validates :person_id, numericality: {only_integer: true, greater_than: 0}
end
