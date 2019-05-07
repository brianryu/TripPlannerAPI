class TripSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :todos
  has_many :users
end
