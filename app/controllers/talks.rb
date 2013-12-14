Confy::App.controllers :talks do

  @title = 'talks - confy'

  get ':year/:conference_slug/:talk_slug' do
    conference = Conference.where(:year => params[:year], :slug => params[:conference_slug]).first
    talk = Talk.where(:conference_id => conference.id, :slug => params[:talk_slug]).first
    render 'talks/show',
      locals: { talk: talk, conference: conference, title: "\"#{talk.title}\" by @#{talk.speaker.twitter}, at @#{talk.conference.twitter}" },
      :layout => 'layout'
  end

end
