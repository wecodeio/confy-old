Confy::App.controllers :speakers do

  @title = 'speakers - confy'

  get :list do
    render 'speakers/list',
      locals: { speakers: Speaker.sorted, title: @title },
      :layout => 'layout'
  end

  get 'show/:id' do
    speaker = Speaker[params[:id]]
    render 'speakers/show',
      locals: { speaker: speaker, title: "#{speaker.name} - confy" },
      :layout => 'layout'
  end

end
