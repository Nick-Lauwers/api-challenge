require 'faraday'
require 'json'

class Connection

  BASE = 'https://hatchways.io/api/assessment/blog/posts'

  def self.api
    Faraday.new(url: BASE) do |faraday|
      faraday.response :logger
      faraday.adapter Faraday.default_adapter
      faraday.headers['Content-Type'] = 'application/json'
    end
  end
end