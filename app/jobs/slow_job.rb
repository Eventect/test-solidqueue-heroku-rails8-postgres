class SlowJob < ApplicationJob
  queue_as :default

  def perform(*args)
    sleep 10
    JobResult.create!(message: "Job completed at #{Time.current}")
  end
end
