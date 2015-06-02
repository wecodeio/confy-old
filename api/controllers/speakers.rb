Confy::Api.controllers :speakers do
  include JsonHelper

  get ":id" do
    if speaker = Speaker[params[:id]]
      render_json :'speakers/show.json',
        locals: { speaker: speaker }
    else
      not_found
    end
  end

end
