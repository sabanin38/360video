class VideoChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'video360'
  end
end
