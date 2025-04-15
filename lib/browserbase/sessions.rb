class Browserbase
  module Sessions
    def create(
      project_id:,
      browser_settings: nil,
      extension_id: nil,
      keep_alive: nil,
      region: nil,
      timeout: nil,
      user_metadata: nil
    )
      body = {
        project_id:,
        browser_settings:,
        extension_id:,
        keep_alive:,
        region:,
        timeout:,
        user_metadata:
      }.compact.transform_keys(:camelize).to_json

      http_client.post("sessions") do |req|
        req.body = body
      end
    end

    def retrieve
    end

    def update
    end

    def list
    end

    def debug
    end
  end
end
