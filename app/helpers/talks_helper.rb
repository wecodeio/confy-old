Confy::App.helpers do

  def video_iframe(video_url)
    "http://player.vimeo.com/video/#{video_url.split('/').last}"
  end

end
