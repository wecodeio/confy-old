Confy::App.controllers :conferences do

  get :list do
    render 'conferences/list',
      locals: { conferences: Conference.order(:start_date) },
      :layout => 'layout'
  end

end
