
require 'spreadsheet'


sheet = Spreadsheet.open('store.xls')


sheet = sheet.worksheet 0

1.step(200, 1) do |i|
    row=Array.new
row += sheet.row(i).compact!

if !row.empty?
    puts "#{i}번째"
row.each do |k|
    
    #store_info=Store.new
    
    if row.index(k)==0
        puts "이름 : #{k}"
    #    store_info.name=k
        elsif row.index(k)==1
            puts "폰번호 : #{k}"
    #         store_info.phone_number=k
        else
            puts "카테고리 : #{k}"
    #        # store_info.=k
    end
    #    store_info.save
    
    
    
end 
else
    break
end

end