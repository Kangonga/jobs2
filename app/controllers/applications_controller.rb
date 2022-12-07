class ApplicationsController < ApplicationController
    def index
        render json: Application.all
    end
    def create
        Application.create(
            user_id: params[:user_id],
            job_id: params[:job_id],
            application_stage: "submitted"
        )
    end

    def show
        render json: Application.find(params[:id]), include:[:job, :user]
    end
end
