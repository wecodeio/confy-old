module Confy
  class App < Padrino::Application
    register LessInitializer
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions

    get :index do
      redirect url(:conferences, :upcoming)
    end

    get :disclaimer do
      render 'home/disclaimer',
        locals: { title: 'Disclaimer - confy' },
        :layout => 'layout'
    end

  end
end
