require 'date'

Sequel.extension :pg_array

DB[:speakers_talks].delete
DB[:playlists_talks].delete
Playlist.dataset.destroy
Talk.dataset.destroy
Conference.dataset.destroy
Speaker.dataset.destroy

rubyconfar2013 = Conference.create(:title => 'RubyConf Argentina 2013',
  :description => 'RubyConf Argentina is a regional conference about Ruby and related technologies.',
  :image_url => 'http://confy-assets.wecode.io/conferences/rubyconfar-2013.png',
  :start_date => Date.new(2013,11,27), :end_date => Date.new(2013,11,28),
  :place => 'Ciudad Cultural Konex, AR', :place_url => 'http://goo.gl/maps/MIWv7',
  :twitter => 'RubyConfAr', :url => 'http://www.rubyconfargentina.org/',
  :tags => ['ruby', 'rails'],
  :year => 2013, :slug => 'rubyconfar')

jano = Speaker.create(:name => 'Jano González',
  :twitter => 'janogonzalez')

ruby_me_programo = Talk.create(:title => 'Cómo Ruby me programó a mí',
  :video_url => 'http://www.youtube.com/watch?v=LNtmg-btc5E',
  :conference_id => rubyconfar2013.id,
  :slug => 'como-ruby-me-programo-a-mi')

jano.add_talk(ruby_me_programo)

startechconf2013 = Conference.create(:title => 'StarTechConf 2013',
  :description => 'The conference that brings together world renowned stars in software development and local tech experts to talk about HTML5, CSS3, JavaScript, Ruby, Java, Python, Mobile and more.',
  :image_url => 'http://confy-assets.wecode.io/conferences/startechconf-2013.png',
  :start_date => Date.new(2013,10,25), :end_date => Date.new(2013,10,26),
  :place => ' USM Campus San Joaquin, CL', :place_url => 'http://goo.gl/maps/G0O7G',
  :twitter => 'startechconf', :url => 'http://www.startechconf.com/',
  :tags => ['ruby', 'python', 'java', 'mobile', 'javascript', 'html5', 'css3'],
  :year => 2013, :slug => 'startechconf')

rubyconfar2012 = Conference.create(:title => 'RubyConf Argentina 2012',
  :description => '¡El mayor evento Ruby de habla hispana, donde nos reunimos a compartir y aprender sobre las últimas tecnologías!',
  :image_url => 'http://confy-assets.wecode.io/conferences/rubyconfar-2012.png',
  :start_date => Date.new(2012,10,19), :end_date => Date.new(2012,10,20),
  :place => 'Paseo La Plaza, AR', :place_url => 'http://goo.gl/maps/z0vIo',
  :twitter => 'RubyConfAr', :url => 'http://2012.rubyconfargentina.org/',
  :tags => ['ruby', 'rails'],
  :year => 2012, :slug => 'rubyconfar')

soveran = Speaker.create(:name => 'Michel Martens',
  :twitter => 'soveran')

smallTools = Talk.create(:title => 'The Power of Small Tools',
  :video_url => 'https://vimeo.com/63628137',
  :conference_id => rubyconfar2012.id,
  :slug => 'the-power-of-small-tools')

soveran.add_talk(smallTools)

interfaces = Talk.create(:title => '¿Dónde están mis interfaces?',
  :video_url => 'https://vimeo.com/62132088',
  :conference_id => rubyconfar2012.id,
  :slug => 'donde-estan-mis-interfaces')

jano.add_talk(interfaces)

rubyconfar2011 = Conference.create(:title => 'RubyConf Argentina 2011',
  :description => 'The largest event in the Ruby Community in the Spanish speaking world. RubyConf Argentina 2011 was a two-day event held in Buenos Aires the 8th and 9th of November 2011, focused on Ruby and modern web technologies related to the Ruby programming language.',
  :image_url => 'http://confy-assets.wecode.io/conferences/rubyconfar-2011.png',
  :start_date => Date.new(2011,11,8), :end_date => Date.new(2011,11,9),
  :place => 'Ciudad Cultural Konex, AR', :place_url => 'http://goo.gl/maps/MIWv7',
  :twitter => 'RubyConfAr', :url => 'http://2011.rubyconfargentina.org/',
  :tags => ['ruby', 'rails'],
  :year => 2011, :slug => 'rubyconfar')

jperez = Speaker.create(:name => 'Juan Perez',
  :twitter => 'jperez')

jperez.add_talk(interfaces)

lista = Playlist.create(:title => 'Charlas cool',
  :description => 'Es un compendio de charlas bastante interesante',
  :slug => 'charlas-cool',
  :curator => jperez)

lista.add_talk(interfaces)
lista.add_talk(smallTools)