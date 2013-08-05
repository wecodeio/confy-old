module Confy
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions

    get :index do
      redirect 'conferences/list'
    end
  end
end
