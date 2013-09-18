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

    describe 'when twitter is valid' do
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

    describe 'when twitter is not valid' do
      let(:twitter_not_valid_redirection) { 'http://example.org/speakers/list' }

      it 'renders the list page' do

        Speaker.stub :find_by_twitter, nil do
          get '/speakers/somebody'
        end

        last_response.must_be :redirect?
        follow_redirect!
        assert_equal last_request.url, twitter_not_valid_redirection
      end
    end

  end
end