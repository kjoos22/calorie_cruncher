class Exercise < ApplicationRecord
    belongs_to :day
    has_one :person, through: :day
    
    validates :type, :minutes, :day_id, presence: true
    validates :minutes, numericality: {only_integer: true, greater_than: 0}
    validates :day_id, numericality: {only_integer: true, greater_than: 0}
    #validates :type, inclusion: {in: %w(LIST TO BE INSERTED)} 
end
