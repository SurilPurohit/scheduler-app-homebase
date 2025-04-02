class ScheduleCreatorJob < ApplicationJob
  queue_as :default

  def perform(schedule_data)
    grok_service = GrokService.new(ENV[GROK_API_KEY])
    response = grok_api.create_schedule(schedule_data)
    # Handle response as needed
  end
end
