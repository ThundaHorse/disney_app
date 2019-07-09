class Api::TwilioController < ApplicationController
  include Webhookable
  after_action :set_header
  skip_before_action :verify_authenticity_token


  def text
    account_sid = ENV['account_sid']
    auth_token = ENV['auth_token']

    name = "Space mountain"
    wait = 100

    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = '+17605732747'
    to = '+1949-545-3204'

    client.messages.create(
      from: from, 
      to: to, 
      body: "Your ride #{name}, has dropped from 200 minutes to #{wait} minutes"
    )
  end
end
