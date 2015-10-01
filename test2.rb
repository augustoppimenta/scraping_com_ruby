require 'mechanize'

mechanize = Mechanize.new

page = mechanize.get('http://www.globo.com/')

puts page.at('#top-story h2').text.strip
