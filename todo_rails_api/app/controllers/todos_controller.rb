class TodosController < ApplicationController
  def index
    @todos = Todo.all
    render json: { message: "ok", todos_data: @todos }
  end

  def show
    begin
      @todo = Todo.find(params[:id])
      render json: { message: "ok", todos_data: @todo }
    rescue ActiveRecord::RecordNotFound
      render json: { message: "no todo matches that ID" }, status: 404
    rescue Exception
      render json: { message: "there was some other error" }, status: 500
    end
  end

  def create
    begin
      @todo = Todo.new(todo_params)
      @todo.save 
      @all_todos = Todo.order(:id)
      render json: { message: "todo added successfully", todos_data: @all_todos }
    rescue Exception
      render json: { message: "there was some other error" }, status: 500
    end
  end

  def update
    begin 
      @todo = Todo.find(params[:id])
      @todo.update(todo_params)
      @all_todos = Todo.order(:id)
      render json: { message: "todo updated successfully", todos_data: @all_todos }
    rescue Exception
      render json: { message: "there was some other error" }
    end
  end
  
  def destroy
    begin
      @todo = Todo.find(params[:id])
      @todo.destroy
      @all_todos = Todo.order(:id)
      render json: { message: "ok", todos_data: @all_todos }
    rescue ActiveRecord::RecordNotFound
      render json: { message: "no todo matches that ID" }
    rescue Exception
      render json: { message: "there was some other error" }
    end
  end
end
