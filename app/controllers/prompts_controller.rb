# app/controllers/prompts_controller.rb
class PromptsController < ApplicationController
  def create
    prompt = params[:prompt]
    grok_service = GrokService.new(ENV[GROK_API_KEY])
    response = grok_service.generate_completion(prompt)
    if response.success?
      @completion = response.parsed_response['choices'].first['text']
      # Handle the successful response, e.g., render a view or redirect
    else
      @error = response.parsed_response['error']['message']
      # Handle the error, e.g., render an error message
    end
  end
end
