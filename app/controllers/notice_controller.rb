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
           post_notice.post_num=doc.css('td')[a-1].text
           post_notice.title= doc.css('td')[a].text
           post_notice.post_time=doc.css('td')[a+1].text
           post_notice.writer=doc.css('td')[a+2].text
           
           post_notice.save
           a=a+5
        end
      end
    end
  end
#-------------------------------

#-------------------------------
  def notice
    if user_signed_in?
      if current_user.admin_check
        if !Notice.exists? or Notice.last.created_at.to_i < (Time.now - 120.minutes).to_i
          destroy_notice_db
          crawling_notice
          notice
        else
          @every_url=Notice.all.paginate(:page => params[:page], :per_page => 10)
        end
      
      else
        @every_url=Notice.all.paginate(:page => params[:page], :per_page => 10)
        if !Notice.exists?
          @no_db="DB에 저장된 공지사항이 없습니다. 관리자에게 문의하세요"
        end
      end
    else 
      @every_url=Notice.all.paginate(:page => params[:page], :per_page => 10)
      if !Notice.exists?
        @no_db="DB에 저장된 공지사항이 없습니다. 관리자에게 문의하세요"
      end
    end
  end
  
end

