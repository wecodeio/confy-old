require 'net/http'
require 'json'

Confy::App.helpers do

  def video_iframe(video_url)
    "http://player.vimeo.com/video/#{video_url.split('/').last}"
  end

  def video_thumbnail(video_url)
    result = Net::HTTP.get(URI.parse("http://vimeo.com/api/v2/video/#{video_url.split('/').last}.json"))
    JSON.parse(result)[0]["thumbnail_large"]
  end
end
