Confy::App.controllers :talks do

  @title = 'talks - confy'

  get :list do
    render 'talks/list',
      locals: { talks: Talk.sorted, title: @title },
      :layout => 'layout'
  end

  get ':year/:conference_slug/:talk_slug' do
    conference = Conference.where(:year => params[:year], :slug => params[:conference_slug]).first
    talk = Talk.where(:conference_id => conference.id, :slug => params[:talk_slug]).first
    render 'talks/show',
      locals: { talk: talk, title: "#{talk.title} - confy" },
      :layout => 'layout'
  end

end
