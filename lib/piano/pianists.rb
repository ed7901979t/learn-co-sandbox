class Piano::Pianists 

def self.scrape_pianists
  pianists = []

doc=Nokogiri::HTML(open("https://www.liveabout.com/piano-composers-and-musicians-4123062"))

list_pianist= doc.css(div id="list-sc_1-0")
list_pianist.each do |pianist|
list_pianist self.now
list_pianist.title=pianist.css("h3").text.strip
list_pianist.introduction=pianist.css("p").children[0].text.strip
list_pianist.introduction=pianist.css("p").children[1].text.strip

pianists << list_pianist

end
pianists 