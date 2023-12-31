class TodoListsController < ApplicationController
  before_action :set_todo_list, only: %i[show edit update destroy]
  before_action :authenticate_user!
  before_action :require_admin, only: []

  # GET /todo_lists
  # GET /todo_lists.json
  def index
    @todo_lists = TodoList.where(user: current_user)
  end

  # GET /todo_lists/1
  # GET /todo_lists/1.json
  def show; end

  # GET /todo_lists/new
  def new
    @todo_list = TodoList.new
  end

  # GET /todo_lists/1/edit
  def edit; end

  # POST /todo_lists
  # POST /todo_lists.json
  def create
    @todo_list = TodoList.new(todo_list_params)
    @todo_list.user = current_user

    respond_to do |format|
      if @todo_list.save
        format.html { redirect_to @todo_list, notice: 'Todo list was successfully created.' }
        format.json { render :show, status: :created, location: @todo_list }
      else
        format.html { render :new }
        format.json { render json: @todo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_lists/1
  # PATCH/PUT /todo_lists/1.json
  def update
    respond_to do |format|
      if @todo_list.update(todo_list_params)
        format.html { redirect_to @todo_list, notice: 'Todo list was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_list }
      else
        format.html { render :edit }
        format.json { render json: @todo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_lists/1
  # DELETE /todo_lists/1.json
  def destroy
    @todo_list.destroy
    respond_to do |format|
      format.html { redirect_to @todo_list, notice: 'Todo list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def require_admin
    unless current_user && current_user.admin?
      flash[:alert] = "Vous n'êtes pas autorisé à effectuer cette action."
      redirect_to root_path
    end
  end

  def set_todo_list
    @todo_list = TodoList.find(params[:id])
  end

  def todo_list_params
    params.require(:todo_list).permit(:title, :description, :id)
  end
end
