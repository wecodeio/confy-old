Confy::App.controllers :speakers do

  @title = 'speakers - confy'

  get :list do
    render 'speakers/list',
      locals: { speakers: Speaker.sorted, title: @title },
      :layout => 'layout'
  end

  get ':twitter' do |twitter|
    speaker = Speaker.find_by_twitter(twitter)
    render 'speakers/show',
      locals: { speaker: speaker, title: "#{speaker.name} - confy" },
      :layout => 'layout'
  end

end
