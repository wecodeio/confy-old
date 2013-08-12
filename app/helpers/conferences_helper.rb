Confy::App.helpers do
  def date_range(start_date, end_date)
    if start_date.month.eql? end_date.month
      "#{start_date.day}-#{end_date.day} #{month_name(end_date.month)} #{end_date.year}"
    else
      "#{start_date.day} #{month_name(start_date.month)}-#{end_date.day} #{month_name(end_date.month)} #{end_date.year}"
    end
  end

  def url_cropper(url)
    url.sub('http://','').sub('www.','').sub('/','')
  end

  private
  def month_name(month)
    Date::MONTHNAMES[month][0..2]
  end
end
