Confy::App.controllers :speakers do

  get :list do
    render 'speakers/list',
      locals: { speakers: Speaker.sorted },
      :layout => 'layout'
  end

  get 'show/:id' do
    speaker = Speaker[params[:id]]
    render 'speakers/show',
      locals: { speaker: speaker },
      :layout => 'layout'
  end

end
