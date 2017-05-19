class HomeController < ApplicationController
  def index
    uri = URI("https://www.wordplanet.org/kr/01/1.htm#0")
    html_doc = Nokogiri::HTML(Net::HTTP.get(uri))
    @result=html_doc.css("div.textBody//p//text()")
    # i=1
    
    # html_doc.css("div.textBody//p//text()").each do |link|
    #   puts puts "#{i}번째"
    #   puts link.content
    #   i+=1
    
    # end

    
  end
  
  def verse60
    # uri = URI("https://quizlet.com/1987812/60-krvniv-flash-cards/")
    # html_doc = Nokogiri::HTML(Net::HTTP.get(uri))
    
    # @result=html_doc.css("span.TermText.notranslate.lang-ko")
    
  end
  
  def verse60_details
    @chapter=params[:chapter]
    @verse=Verse.where(:group => 1).where(:s_group => @chapter)
  end
  
  
  def details
    @test=Verse.all
  end
  
end
