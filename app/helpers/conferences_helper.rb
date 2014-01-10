Confy::App.helpers do

  def conferences_grouped_by_year(conferences)
    grouped_conferences = conferences.group_by(&:year)
    Hash[grouped_conferences.sort_by { |k, _| k }.reverse]
  end

  def talks_counter(quantity)
    if quantity > 1 then
      "#{quantity} talks"
    elsif quantity == 0
      "No talks yet"
    else
      "1 talk" if quantity == 1
    end
  end

  def carousel_activator(ids)
    ids.map do |id|
      "new Carousel({ carousel: '#carousel-#{id}', delay: 7.5 });"
    end.join("\n")
  end

  def date_range(start_date, end_date)
    if start_date.month.eql? end_date.month
      "#{start_date.day}-#{end_date.day} #{month_name(end_date.month)} #{end_date.year}"
    else
      "#{start_date.day} #{month_name(start_date.month)}-#{end_date.day} #{month_name(end_date.month)} #{end_date.year}"
    end
  end

  def url_cropper(url)
    url.gsub(/\A(http:\/\/)?(www\.)?(.*?)\/?\z/,'\3')
  end

  private
  def month_name(month)
    Date::MONTHNAMES[month][0..2]
  end
end
