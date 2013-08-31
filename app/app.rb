module Confy
  class App < Padrino::Application
    register LessInitializer
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions

    get :index do
      redirect 'conferences/upcoming'
    end
  end
end
