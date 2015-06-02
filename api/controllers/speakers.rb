Confy::Api.controllers :speakers do
  include JsonHelper

  get :index do
    render_json :'speakers/index.json',
      locals: { speakers: Speaker.all }
  end

  get ":id" do
    if speaker = Speaker[params[:id]]
      render_json :'speakers/show.json',
        locals: { speaker: speaker }
    else
      not_found
    end
  end

end
