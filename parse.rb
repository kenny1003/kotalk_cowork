require 'nokogiri'

1.step(10, 1) do |i|
  doc = Nokogiri::HTML(open("result_#{i}.html"))
  doc.xpath("//tr").each do |y|
   
    url= "https://portal.koreatech.ac.kr"
   # puts "#{url}#{y.attr("data-url")}" if
     #puts y.attr("data-url")
     
      uri= "#{url}"+"#{y.attr("data-url")}" 
      if "#{uri}".include?("ctt")
      puts  "#{uri}"
    end
  end
end
