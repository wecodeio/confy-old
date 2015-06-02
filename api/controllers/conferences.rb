Confy::Api.controllers :conferences do
  include JsonHelper

  get :index do
    render_json :'conferences/index.json',
      locals: { conferences: Conference.eager(:talks).all }
  end

  get :upcoming do
    render_json :'conferences/index.json',
      locals: { conferences: Conference.upcoming.sorted }
  end

  get ":id" do
    if conference = Conference[params[:id]]
      talks = conference.talks_with_speakers
      render_json :'conferences/show.json',
        locals: { conference: conference, talks: talks }
    else
      not_found
    end
  end

end
