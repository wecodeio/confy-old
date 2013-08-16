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

end
