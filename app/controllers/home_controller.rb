class HomeController < ApplicationController
  def index
    uri = URI("https://www.wordplanet.org/kr/01/1.htm#0")
    html_doc = Nokogiri::HTML(Net::HTTP.get(uri))
    @result=html_doc.css("div.textBody//p//text()")
    # i=1
    
    # html_doc.css("div.textBody//p//text()").each do |link|
    #   puts puts "#{i}번째"
    #   puts link.content
    #   i+=1=
    
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
    @chapter=params[:chapter]
    @test=Verse.where(:group => @chapter)
  end
  
  def mytest
    offset = rand(Verse.where(:group=>0).count)
    @random_verse=Verse.where(:group => 0).offset(offset).first
    @content=Answer.last
  end
  
  def checker
    answer = Answer.new
    answer.content=params[:content]
    answer.save
  end

end
