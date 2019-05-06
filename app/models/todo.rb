class Todo < ApplicationRecord
    has_many :tasks
    belongs_to :user
    belongs_to :trip
end
