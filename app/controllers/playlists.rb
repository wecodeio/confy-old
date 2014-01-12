Confy::App.controllers :playlists do

  @title = 'playlists - confy'

  get :index do
    render 'playlists/list',
      locals: { playlists: Playlist.eager(:talks).all, title: @title },
      :layout => 'layout'
  end

  get ':curator/:slug' do
    playlist = Playlist.where(:curator => Speaker.where(:twitter => params[:curator]), :slug => params[:slug]).first
    talks = playlist.talks
    render 'playlists/show',
      locals: { playlist: playlist, talks: talks, title: "#{playlist.title} - confy" },
      :layout => 'layout'
  end

end
