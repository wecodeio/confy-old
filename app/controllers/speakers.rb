Confy::App.controllers :speakers do

  get :list do
    render 'speakers/list',
      locals: { speakers: Speaker.sorted },
      :layout => 'layout'
  end

end
