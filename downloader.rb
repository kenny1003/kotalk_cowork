1.step(91, 10) do |i|
  puts i
  `curl -o result_#{i}.html "https://portal.koreatech.ac.kr/ctt/bb/bulletin?b=14&ls=20&ln=#{i}&dm=m"`
end
