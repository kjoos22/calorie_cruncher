class Day < ApplicationRecord
    belongs_to :person
    has_many :exercises

    validates :date, :pounds, :calories_consumed, 
              :person_id, :calories_expended, presence: true
    validates :pounds, numericality: {greater_than: 0}
    validates :calories_consumed, numericality: {only_integer: true,
                                                 greater_than: 0}
    validates :calories_expended, numericality: {only_integer: true,
                                                 greater_than_or_equal_to: 0}
    validates :person_id, numericality: {only_integer: true, greater_than: 0}

    def update_calories_expended(exercise)
        
    end

    def calculate_tdee
        #Total Daily Energy Expenditure
        self.tdee = self.bmr + self.tef + self.calories_expended
    end

    def calculate_bmr
        #Basal Metabolic Rate
        weight = self.weight * 0.453592
        height = self.person.height * 2.54
        age = self.person.age
        if self.person.gender == "M"
            self.bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5
        elsif self.person.gender == "F"
            self.bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5
        end
    end

    def calculate_tef
        #Thermic Effect of Food
        self.tef = self.bmr * 0.1
    end

    def set_variables
        self.calculate_bmr()
        self.calculate_tef()
        self.calculate_tdee()
    end
end
