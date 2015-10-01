require 'mechanize'

agent = Mechanize.new

f = File.open('linkes.yml', 'w')

agent.get("http://www.globo.com.br") do |page|
  page.links.each do |link|
    linke = link.href.to_s
    puts linke
    f << linke + "\n"
  end
end

f.close

