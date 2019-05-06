class TodoSerializer < ActiveModel::Serializer
  attributes :id, :location, :start_date, :end_date, :priority_lvl
end
