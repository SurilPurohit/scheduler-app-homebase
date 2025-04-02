# app/services/grok_service.rb
class GrokService
  include HTTParty
  base_uri 'https://api.x.ai/v1'

  def initialize(api_key)
    @headers = {
      "Authorization" => "Bearer #{GROK_API_KEY}",
      "Content-Type" => "application/json"
    }
  end

  def generate_completion(prompt)
    options = {
      headers: @headers,
      body: {
        model: "grok-beta",
        prompt: prompt,
        max_tokens: 50
      }.to_json
    }
    self.class.post('/completions', options)
  end
end
