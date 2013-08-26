Confy::App.controllers :talks do

  @title = 'talks - confy'

  get :list do
    render 'talks/list',
      locals: { talks: Talk.sorted, title: @title },
      :layout => 'layout'
  end

  get 'show/:id' do
    talk = Talk[params[:id]]
    render 'talks/show',
      locals: { talk: talk, title: "#{talk.title} - confy" },
      :layout => 'layout'
  end

end
