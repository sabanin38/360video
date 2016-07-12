class VideoController < ApplicationController
  def stop
    ActionCable.server.broadcast 'video360',
      action: 'stop',
      video_id: params[:id] || 'undefined'
    head :ok
  end

  def play
    # message = Message.new(message_params)
    # message.user = current_user
    # if message.save
      ActionCable.server.broadcast 'video360',
        action: 'play',
        video_id: params[:id] || 'undefined'
      head :ok
    # end
  end

  def show
    @messages = nil
  end
end
