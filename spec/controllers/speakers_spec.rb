require_relative '../spec_helper'
require 'rack/test'
require File.expand_path('app/app')
require File.expand_path('app/controllers/speakers')

describe 'SpeakersController' do
  include Rack::Test::Methods

  def app
    Confy::App
  end

  describe 'on GET to /speakers/:twitter' do
    let(:speaker_name) { 'Michel Martens' }
    let(:speaker) { Speaker.new(name: speaker_name) }

    it 'renders the speaker page' do

      Speaker.stub :find_by_twitter, speaker do
        get '/speakers/soveran'
      end

      last_response.must_be :ok?
      last_response.body.must_include speaker_name
    end
  end
end