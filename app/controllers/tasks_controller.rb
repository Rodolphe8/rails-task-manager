class TasksController < ApplicationController
    def index
        @tasks = Task.all 
    end 

    def show
        @task = Task.find(params[:id]) 
    end

    def new
        @task = Task.new
    end 

    def create
        @task = Task.new(task_params)
        @task.save

        redirect_to task_path(@task)
    end 

    def update
        @restaurant = Restaurant.find(params[:id])
        @restaurant.update(restaurant_params)

        redirect_to task_path(@task) 
      end 

    private

    def task_params
        # *Strong params*: You need to *whitelist* what can be updated by the user
        # Never trust user data!
        params.require(:task).permit(:title, :details, :completed)
    end 
end
