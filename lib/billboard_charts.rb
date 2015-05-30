#encoding: utf-8
#require "billboard_chart_html/version"
require "open-uri"
require "nokogiri"

class BillboardCharts

  @limit = 100

  def initialize(chart_name='hot-100')
    url = 'http://www.billboard.com/charts/'+chart_name
    @scraped_data = Nokogiri::HTML(open(url))
  end

  def get_artists
    @scraped_data.css(".chart-row h3").first(@limit).collect do |artist|
      artist.text.strip!
    end
  end

  def get_singles
    @scraped_data.css(".chart-row h2").first(@limit).collect do |single|
      single.text.strip!
    end
  end

  def get_list(limit=100)
    @limit=limit
    get_artists.zip(get_singles)
  end

end
