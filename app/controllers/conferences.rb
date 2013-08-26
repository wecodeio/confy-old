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

  get 'show/:id' do
    conference = Conference[params[:id]]
    render 'conferences/show',
      locals: { conference: conference, title: "#{conference.title} - confy" },
      :layout => 'layout'
  end

end
