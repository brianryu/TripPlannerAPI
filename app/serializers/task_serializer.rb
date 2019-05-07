class TaskSerializer < ActiveModel::Serializer
  attributes :id, :todo_id, :message
  belongs_to :todo
end
