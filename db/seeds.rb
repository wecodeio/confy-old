require 'date'

Sequel.extension :pg_array

Conference.dataset.destroy

rubyconfar2013 = Conference.create(:title => 'RubyConf Argentina 2013',
  :description => 'RubyConf Argentina is a regional conference about Ruby and related technologies.',
  :image_url => '/images/conferences/rubyconfar-2013.png',
  :start_date => Date.new(2013,11,27), :end_date => Date.new(2013,11,28),
  :place => 'Ciudad Cultural Konex, AR', :place_url => 'http://goo.gl/maps/MIWv7',
  :twitter => 'RubyConfAr', :url => 'http://www.rubyconfargentina.org/',
  :tags => ['ruby', 'rails'])

startechconf2013 = Conference.create(:title => 'StarTechConf 2013',
  :description => 'The conference that brings together world renowned stars in software development and local tech experts to talk about HTML5, CSS3, JavaScript, Ruby, Java, Python, Mobile and more.',
  :image_url => '/images/conferences/startechconf-2013.png',
  :start_date => Date.new(2013,10,25), :end_date => Date.new(2013,10,26),
  :place => ' USM Campus San Joaquin, CL', :place_url => 'http://goo.gl/maps/G0O7G',
  :twitter => 'startechconf', :url => 'http://www.startechconf.com/',
  :tags => ['ruby', 'python', 'java', 'mobile', 'javascript', 'html5', 'css3'])
