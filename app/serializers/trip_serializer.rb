class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :img_url
  has_many :todos
  has_many :users
end
