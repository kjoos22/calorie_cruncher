class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :inches, :age, :gender

  has_many :days
end
