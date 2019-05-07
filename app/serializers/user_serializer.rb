class UserSerializer < ActiveModel::Serializer
  attributes :id, :username 
  has_many :todo
  has_many :trips
end
