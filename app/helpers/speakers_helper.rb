require 'uri'
require 'net/http'

Confy::App.helpers do

  def speaker_image_url(twitter)
    url = "http://confy-assets.wecode.io/speakers/#{twitter}.jpeg"

    if exists?(url) then
      url
    else
      "http://confy-assets.wecode.io/speakers/generic-speaker.png"
    end

  end

  private

  def exists?(image_url)
    url = URI.parse(image_url)
    Net::HTTP.start(url.host, url.port) do |http|
      response = http.head(url.path)
      case response
      when Net::HTTPSuccess, Net::HTTPRedirection
        true
      else
        false
      end
    end
  end

end
