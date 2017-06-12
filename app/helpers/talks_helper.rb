require 'net/http'
require 'json'

module TalksHelper
  def video_iframe(video_url)
    if video_url.include? 'vimeo' then
      "//player.vimeo.com/video/#{video_url.split('/').last}"
    else
      "//www.youtube.com/embed/#{video_url.split('=').last}"
    end
  end

  def video_thumbnail(video_url)
    if video_url.include? 'vimeo' then
      result = Net::HTTP.get_response(URI.parse("http://vimeo.com/api/v2/video/#{video_url.split('/').last}.json"))
      if result.code == '404'
        return 'https://via.placeholder.com/640x480/18213d/ffffff?text=VIDEO IS NOT READY YET. SORRY!'
      end
      JSON.parse(result.body)[0]["thumbnail_large"]
    else
      "//img.youtube.com/vi/#{video_url.split('=').last}/maxresdefault.jpg"
    end
  end
end

Confy::App.helpers TalksHelper