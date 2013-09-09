Confy::App.controllers :conferences do

  @title = 'conferences - confy'

  get :upcoming do
    render 'conferences/upcoming',
      locals: { conferences: Conference.upcoming.sorted, title: 'Upcoming conferences - confy' },
      :layout => 'layout'
  end

  get :list do
    render 'conferences/list',
      locals: { conferences: Conference.sorted, title: @title },
      :layout => 'layout'
  end

  get ':year/:slug' do
    conference = Conference.where(:year => params[:year], :slug => params[:slug]).first
    render 'conferences/show',
      locals: { conference: conference, title: "#{conference.title} - confy" },
      :layout => 'layout'
  end

end
