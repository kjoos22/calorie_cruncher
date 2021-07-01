class DaySerializer < ActiveModel::Serializer
  attributes :id, :date, :pounds, :calories_consumed, :calories_expended,
             :bmr, :tef, :tdee, :person_id
end
