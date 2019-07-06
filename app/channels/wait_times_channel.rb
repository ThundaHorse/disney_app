class WaitTimesChannel < ApplicationCable::Channel
  def subscribed
    # attraction = Attraction.find(params[:id])
    # stream_from "wait_times_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
