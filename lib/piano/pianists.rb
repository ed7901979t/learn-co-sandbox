class Piano::Pianists 

def self.get_composers
 composers = []
    base_url = 'http://gnoted.com/9-websites-to-play-piano-online-for-free/'
    #main_url = "#{base_url}/jobs?category=programming&type=&region=newyork"
    data = self.data_scraper(base_url)
    Nokogiri::HTML.parse(open('http://gnoted.com/9-websites-to-play-piano-online-for-free/')).title.strip
    list_composer_description=data.css("h3")
    list_composer_description=data.css('p[style="text-align: left;"]')
		
    list_composer_description.each do |data|


     puts data
end
end
def self.data_scraper(url)
    Nokogiri::HTML(open(url))
end

self.get_composers
end    