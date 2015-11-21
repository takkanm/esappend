require "esappend/version"
require 'esa'

module Esappend
  class Page
    def initialize(token, team_name, page_id)
      @token     = token
      @team_name = team_name
      @page_id   = page_id
    end

    def append(message)
      current_body = client.post(@page_id).body['body_md']

      post_body = current_body + "\r\n\r\n" + message
      client.update_post(@page_id, body_md: post_body)
    end

    private

    def client
      @client ||= Esa::Client.new(access_token: @token, current_team: @team_name)
    end
  end
end
