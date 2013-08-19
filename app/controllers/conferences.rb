Confy::App.controllers :conferences do

  get :upcoming do
    render 'conferences/upcoming',
      locals: { conferences: Conference.upcoming.sorted },
      :layout => 'layout'
  end

  get :list do
    render 'conferences/list',
      locals: { conferences: Conference.sorted },
      :layout => 'layout'
  end

  get 'show/:id' do
    conference = Conference[params[:id]]
    render 'conferences/show',
      locals: { conference: conference },
      :layout => 'layout'
  end

end
