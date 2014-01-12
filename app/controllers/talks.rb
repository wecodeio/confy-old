Confy::App.controllers :talks do

  @title = 'talks - confy'

  get ':year/:conference_slug/:talk_slug' do
    conference = Conference.where(:year => params[:year], :slug => params[:conference_slug])
    talk = Talk.where(:conference => conference, :slug => params[:talk_slug]).first
    render 'talks/show',
      locals: { talk: talk, conference: talk.conference, title: "\"#{talk.title}\" by #{talk.speakers.map{|s| '@' + s[:twitter] }.join(' & ')}, at @#{talk.conference.twitter}" },
      :layout => 'layout'
  end

end
