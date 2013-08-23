Confy::App.controllers :talks do

  get :list do
    render 'talks/list',
      locals: { talks: Talk.sorted },
      :layout => 'layout'
  end

  get 'show/:id' do
    talk = Talk[params[:id]]
    render 'talks/show',
      locals: { talk: talk },
      :layout => 'layout'
  end

end
