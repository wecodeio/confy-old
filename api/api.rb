require_relative 'helpers/json_helper'

module Confy
  class Api < Padrino::Application
    disable :protect_from_csrf
  end
end
