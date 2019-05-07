class TodoSerializer < ActiveModel::Serializer
  attributes :id, :location, :start_date, :end_date, :priority_lvl
  has_many :tasks
  belongs_to :user
  belongs_to :trip
end
