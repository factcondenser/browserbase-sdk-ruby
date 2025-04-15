# frozen_string_literal: true

require_relative "browserbase/version"

class Browserbase
  class Error < StandardError; end

  BASE_URL = "https://api.browserbase.com/v1/"

  def initialize(api_key:)
    @api_key = api_key
  end

  def contexts = Contexts

  def extensions = Extensions

  def projects = Projects

  def sessions = Sessions

  private

  attr_reader :api_key

  def http_client
    @http_client ||= Faraday.new(
      url: BASE_URL,
      headers: {
        "Content-Type" => "application/json",
        "X-BB-API-Key" => api_key
      }
    )
  end
end
