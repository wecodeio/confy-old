Confy::App.controllers :conferences do

  @title = 'conferences - confy'

  get :upcoming do
    render 'conferences/upcoming',
      locals: { conferences: Conference.upcoming.sorted, title: 'Upcoming conferences - confy' },
      :layout => 'layout'
  end

  get :index do
    render 'conferences/list',
      locals: { conferences: Conference.all, title: @title },
      :layout => 'layout'
  end

  get ':year/:slug' do
    conference = Conference.where(:year => params[:year], :slug => params[:slug]).first
    talks = conference.talks_with_speakers
    render 'conferences/show',
      locals: { conference: conference, talks: talks, title: "#{conference.title} - confy" },
      :layout => 'layout'
  end

end
