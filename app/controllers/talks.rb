Confy::App.controllers :talks do

  get :list do
    render 'talks/list',
      locals: { talks: Talk.sorted },
      :layout => 'layout'
  end

end
