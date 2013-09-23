require 'net/http'
require 'json'

Confy::App.helpers do

  def video_iframe(video_url)
    if video_url.include? 'vimeo' then
      "//player.vimeo.com/video/#{video_url.split('/').last}"
    else
      "//www.youtube.com/embed/#{video_url.split('=').last}"
    end
  end

  def video_thumbnail(video_url)
    if video_url.include? 'vimeo' then
      result = Net::HTTP.get(URI.parse("http://vimeo.com/api/v2/video/#{video_url.split('/').last}.json"))
      JSON.parse(result)[0]["thumbnail_large"]
    else
      "//img.youtube.com/vi/#{video_url.split('=').last}/maxresdefault.jpg"
    end
  end
end
