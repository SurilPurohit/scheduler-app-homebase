class ScheduleCreatorJob < ApplicationJob
  queue_as :default

  def perform(schedule_data)
    grok_service = GrokService.new(ENV['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'])
    response = grok_api.create_schedule(schedule_data)
    # Handle response as needed
  end
end
