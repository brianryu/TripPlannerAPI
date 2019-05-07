class Api::V1::TodosController < ApplicationController
    before_action :find_todo, only: [:update]
    def index
        @todo = Todo.all
        render json: @todo
    end

    def new
        @todo = Todo.new
    end 

    def create
        @todo = Todo.create(todo_params)
        render json: @todo, status: :accepted
    end 
    
    def update
        @Todo.update(todo_params)
        if @todo.save
        render json: @todo, status: :accepted
        else
        render json: { errors: @todo.errors.full_messages }, status: :unprocessible_entity
        end
    end
    
    private
    
    def todo_params
        params.permit(:user_id, :trip_id, :location, :start_date, :end_date, :priority_lvl)
    end
    
    def find_todo
        @todo = Todo.find(params[:id])
    end
end
