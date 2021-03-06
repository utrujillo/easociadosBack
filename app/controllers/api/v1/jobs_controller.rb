module Api
  module V1

    class JobsController < ApplicationController
      before_action :authorized, only: [:create, :update, :destroy]
      before_action :set_job, only: [:show, :update, :destroy]

      # GET /jobs
      def index
        @jobs = Job.is_visible

        render json: @jobs
      end

      # GET /jobs/1
      def show
        render json: @job
      end

      # POST /jobs
      def create
        @job = Job.new(job_params)

        if @job.save
          render json: @job, status: :created
        else
          render json: @job.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /jobs/1
      def update
        if @job.update(job_params)
          render json: @job
        else
          render json: @job.errors, status: :unprocessable_entity
        end
      end

      # DELETE /jobs/1
      def destroy
        if @job.update({ "visible": false })
          render json: @job
        else
          render json: @job.errors, status: :unprocessable_entity
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_job
          @job = Job.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def job_params
          params.permit(:category_id, :nombre, :descripcion, :visible, fotos: [])
        end
    end

  end
end
