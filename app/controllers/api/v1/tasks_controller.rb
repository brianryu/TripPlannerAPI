class Api::V1::TasksController < ApplicationController
    before_action :find_task, only: [:update]
    def index
        @tasks = Task.all
        render json: @tasks
    end

    def new
        @task = Task.new
    end 

    def create
        @task = Task.create(task_params)
        render json: @task, status: :accepted
    end 
    
    def update
        @Task.update(task_params)
        if @task.save
        render json: @task, status: :accepted
        else
        render json: { errors: @task.errors.full_messages }, status: :unprocessible_entity
        end
    end
    
    private
    
    def task_params
        params.permit(:todo_id, :message)
    end
    
    def find_task
        @task = Task.find(params[:id])
    end
end
