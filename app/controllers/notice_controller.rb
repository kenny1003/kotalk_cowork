class NoticeController < ApplicationController

def generate_post
  1.step(10, 1) do |i|
    puts i
    `curl -o result_#{i}.html "https://portal.koreatech.ac.kr/ctt/bb/bulletin?b=14&ls=20&ln=#{i}&dm=m"`
    end 
end

#---------------------------------------
def crawling_notice
    require 'nokogiri'

1.step(10, 1) do |i|
   a=1
  doc = Nokogiri::HTML(open("result_#{i}.html"))
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
def destroy_notice_db
   Notice.delete_all 
end
#-------------------------------
    def notice
<<<<<<< HEAD
if !Notice.exists?(1) or Notice.find(1).created_at.to_i < (Time.now - 120.minutes).to_i
destroy_notice_db
generate_post
crawling_notice
puts "#{Notice.find(1).created_at.utc}"
notice
else
@every_url=Notice.all
puts "#{Notice.find(1).created_at.to_i}"
puts "#{Time.now.to_i}"
puts "#{60.minutes.to_i}"
puts "#{(Time.now + 60.minutes).to_i}"

end
end
=======
    if !Notice.exists?(1) #or Notice.find(1).created_at.utc < (Time.now + 60.minutes).utc
    generate_post
    crawling_notice
    notice
    else
@every_url=Notice.all
    end
    end
>>>>>>> e91dc8c2ab6ccac70ba46836c32f55c544d031bd
end



