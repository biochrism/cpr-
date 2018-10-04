class TasksController < ApplicationController

		http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

		def create
			@issue = Issue.find(params[:issue_id])
			@task = @issue.tasks.create(task_params)
			redirect_to issue_path(@issue)
		end
		def destroy
			@issue = Issue.find(params[:issue_id])
			@task = @issue.tasks.find(params[:id])
			@task.destroy
			redirect_to issue_path(@issue)
		end
		private
			def task_params
				params.require(:task).permit(:name, :body)
			end
	end
