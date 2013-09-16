ENV['RACK_ENV'] = 'test'
require File.expand_path('config/boot')

require 'minitest/autorun'
require 'minitest/pride'
