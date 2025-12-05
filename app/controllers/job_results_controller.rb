class JobResultsController < ApplicationController
  def index
    @job_results = JobResult.order(created_at: :desc)
  end

  def create
    SlowJob.perform_later
    redirect_to job_results_path, notice: "Job started! It will take ~10 seconds. Refresh to see results."
  end
end
