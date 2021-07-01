class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :type, :minutes, :day_id
end
