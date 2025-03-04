# app/controllers/prompts_controller.rb
class PromptsController < ApplicationController
  def create
    prompt = params[:prompt]
    grok_service = GrokService.new(ENV['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'])
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
