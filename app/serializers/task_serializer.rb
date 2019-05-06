class TaskSerializer < ActiveModel::Serializer
  attributes :id, :todo_id, :message
end
