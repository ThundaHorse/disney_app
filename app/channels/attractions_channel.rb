class AttractionsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "attractions_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

end
