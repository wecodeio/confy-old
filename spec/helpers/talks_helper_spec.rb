require_relative '../spec_helper'
require 'rack/test'
require File.expand_path('app/app')
require File.expand_path('app/helpers/talks_helper')

describe 'TalksHelper' do
  include Rack::Test::Methods

  subject do
    Class.new { include TalksHelper }
  end

  def app
    Confy::App
  end

  it 'should return not found default image if video does not exists' do
    wrong_video_url = 'https://vimeo.com/63628137'
    @result = subject.new.video_thumbnail(wrong_video_url)
    @result == 'https://via.placeholder.com/640x480/18213d/ffffff?text=VIDEO IS NOT READY YET. SORRY!'
  end

end
