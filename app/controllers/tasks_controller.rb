class TasksController < ApplicationController
  def common
    @tasks = Task.common
  end

  # Only for common task
  def show
    @task = Task.find(params[:id])
    @exercises = (@task.visible_to_admin_only && !current_user.master?) ? [] : @task.exercises

    @exercise = if @task.finished?(current_user)
                  Exercise.where(:user_id => current_user.id, :task_id => @task.id).first
                else
                  Exercise.new(:date => Date.current, :task_id => @task.id, :user_id => current_user.id)
                end
  end
end
