class Person < ApplicationRecord
    has_many :days
    has_many :exercises, through: :days
    
    validates :name, :inches, :age, :gender, presence: true
    validates :inches, numericality:  {greater_than: 0}
    validates :age, numericality: {only_integer: true, greater_than: 0}
    validates :gender, inclusion: {in: %w(M F)}
end
