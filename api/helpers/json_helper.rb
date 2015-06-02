require 'sinatra/jbuilder'

module JsonHelper
  def render_json(*args)
    content_type "application/json"
    jbuilder *args
  end

  def not_found
    content_type "application/json"
    halt 404
  end
end
