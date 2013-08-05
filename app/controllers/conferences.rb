Confy::App.controllers :conferences do

  get :list do
    render 'conferences/list', :layout => 'layout'
  end

end
