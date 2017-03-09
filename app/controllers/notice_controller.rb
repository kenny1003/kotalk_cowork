class NoticeController < ApplicationController
def destroy_notice_db
   Notice.delete_all
end

#---------------------------------------
def crawling_notice
    require 'nokogiri'
    require 'open-uri'
1.step(10, 1) do |i|
   a=1
  doc = Nokogiri::HTML(open("https://portal.koreatech.ac.kr/ctt/bb/bulletin?b=14&ls=20&ln=#{i}&dm=m"))
  doc.xpath("//tr").each do |y|
    
  doc.css('td')[a].text
    url= "https://portal.koreatech.ac.kr"
   
      uri= "#{url}"+"#{y.attr("data-url")}" 
      if "#{uri}".include?("ctt")
      
     post_notice=Notice.new
     post_notice.url="#{url}"+"#{y.attr("data-url")}" 
     post_notice.title= doc.css('td')[a].text
     post_notice.post_time=doc.css('td')[a+1].text
     post_notice.save
     a=a+5
    end
  end
end


end
#-------------------------------

#-------------------------------
    def notice
if !Notice.exists? or Notice.last.created_at.to_i < (Time.now - 120.minutes).to_i
destroy_notice_db
crawling_notice
notice

else
@every_url=Notice.all


end
end


end
