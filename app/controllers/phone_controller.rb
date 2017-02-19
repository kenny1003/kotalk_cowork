class PhoneController < ApplicationController

  def phone_crawl
    require 'nokogiri'
    require 'open-uri'



    counter = 1000

    while counter <1500  do

      doc = Nokogiri::HTML(open("http://www.koreatech.ac.kr/prog/person/kor/sub01_06_01_02/#{counter}/list.do"))
      @name=doc.css('strong')
      @phone = Phonebook.new
      @phone.name = @name
      @phone.save
      counter = counter+1
    end
  end




end
