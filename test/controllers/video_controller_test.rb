require 'test_helper'

class VideoControllerTest < ActionDispatch::IntegrationTest
  test "should get stop" do
    get video_stop_url
    assert_response :success
  end

  test "should get play" do
    get video_play_url
    assert_response :success
  end

end
