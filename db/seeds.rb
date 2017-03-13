# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 후문 원룸
Room.create(:name => 'marker_mirae_A', :marker => "36.764570, 127.285356", :title => '미래빌리지 A동', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_mirae_B', :marker => "36.764630, 127.285556", :title => '미래빌리지 B동', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-9823-1799')
Room.create(:name => 'marker_mirae_C', :marker => "36.764630, 127.285792", :title => '미래빌리지 C동', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-4765-3959')
Room.create(:name => 'marker_mirae_D', :marker => "36.764930, 127.285356", :title => '미래빌리지 D동', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-7171-6631')
Room.create(:name => 'marker_rexbill', :marker => "36.765591, 127.283724", :title => '렉스빌', :structure => "12평(방1, 화장실1)", :period => '6', :payment => '180', :fee => '21', :deposit => '50', :phone_num => '010-7339-7455')
Room.create(:name => 'marker_life_101', :marker => "36.765589, 127.285092", :title => '라이프원룸 101동', :structure => "-평(방1, 화장실1)", :period => '6', :payment => '190', :fee => '21', :deposit => '50', :phone_num => '010-6788-6588')
Room.create(:name => 'marker_life_102', :marker => "36.765846, 127.285135", :title => '라이프원룸 102동', :structure => "-평(방1, 화장실1)", :period => '6', :payment => '190', :fee => '21', :deposit => '50', :phone_num => '010-6788-6588')
Room.create(:name => 'marker_life_103', :marker => "36.766036, 127.285135", :title => '라이프원룸 103동', :structure => "-평(방1, 화장실1)", :period => '6', :payment => '190', :fee => '21', :deposit => '50', :phone_num => '010-5137-4922')
Room.create(:name => 'marker_life_104', :marker => "36.765605, 127.285478", :title => '라이프원룸 104동', :structure => "-평(방1, 화장실1)", :period => '6', :payment => '190', :fee => '21', :deposit => '50', :phone_num => '010-5695-2373')
Room.create(:name => 'marker_life_105', :marker => "36.765830, 127.285478", :title => '라이프원룸 105동', :structure => "-평(방1, 화장실1)", :period => '6', :payment => '190', :fee => '21', :deposit => '50', :phone_num => '010-5427-2618')
Room.create(:name => 'marker_life_106', :marker => "36.766050, 127.285495", :title => '라이프원룸 106동', :structure => "-평(방1, 화장실1)", :period => '6', :payment => '190', :fee => '21', :deposit => '50', :phone_num => '010-6788-6588')
Room.create(:name => 'marker_green_A', :marker => "36.766344, 127.284448", :title => '그린하우스 A동', :structure => "13평(방1, 화장실1)", :period => '6', :payment => '170', :fee => '21', :deposit => '50', :phone_num => '010-2696-5805')
Room.create(:name => 'marker_green_B', :marker => "36.766258, 127.284748", :title => '그린하우스 B동', :structure => "10평(방1, 화장실1)", :period => '6', :payment => '240', :fee => '21', :deposit => '50', :phone_num => '010-2696-5805')
Room.create(:name => 'marker_green_C', :marker => "36.766017, 127.284662", :title => '그린하우스 C동', :structure => "13평(방1, 화장실1)", :period => '6', :payment => '170', :fee => '21', :deposit => '50', :phone_num => '010-2696-5805')
Room.create(:name => 'marker_geumsiltown_101', :marker => "36.765745, 127.286410", :title => '금실타운 101동', :structure => "7.5평(방1, 화장실1)", :period => '6', :payment => '240', :fee => '40', :deposit => '50', :phone_num => '010-3100-8488')
Room.create(:name => 'marker_geumsiltown_102', :marker => "36.765590, 127.286240", :title => '금실타운 102동', :structure => "?", :period => '?', :payment => '?', :fee => '?', :deposit => '?', :phone_num => '?')
Room.create(:name => 'marker_geumsiltown_103', :marker => "36.765657, 127.285890", :title => '금실타운 103동', :structure => "?", :period => '?', :payment => '?', :fee => '?', :deposit => '?', :phone_num => '?')
Room.create(:name => 'marker_geumsiltown_104', :marker => "36.765799, 127.285990", :title => '금실타운 104동', :structure => "7.5평(방1, 화장실1)", :period => '6', :payment => '240', :fee => '40', :deposit => '50', :phone_num => '010-3100-8488')
Room.create(:name => 'marker_jangwon', :marker => "36.765190, 127.285550", :title => '장원멘션', :structure => "-평(방1, 화장실1)", :period => '6', :payment => '220', :fee => '-', :deposit => '30', :phone_num => '010-9101-9233')



#          // 성공시대 : 36.767679, 127.282300
#          // 금실빌 : 36.768565, 127.281826
#          // 은석빌 : ??
#          // 신안빌 : 36.768795, 127.282470
#          // 조은빌 A : 36.768955, 127.282105
#          // 조은빌 B : 36.769040, 127.282360(확인필요)
#          // 제이엠빌 : 36.768852, 127.282830
#          // 남향빌 : 36.769255, 127.282330
#          // 목조주택 1 : 36.769305, 127.282830(두집임)
#          // 목조주택 2 : 36.769455, 127.282810
#          // 아트하우스 : ??
#          // 루비 A : 36.768444, 127.283358
#          // 루비 B : 36.768674, 127.283245
#          // 골든빌A : 36.768910, 127.283175
#          // 골든빌B : 36.769020, 127.283135
#          // 스타빌 : 36.769220, 127.283115
#          // 파인빌 : 36.769228, 127.283313
#          // 에덴빌A : 36.769038, 127.283405
#          // 에덴빌B : 36.769090, 127.283580
#          // 에덴빌C : 36.769130, 127.283770
#          // 원룸 A : 36.768780, 127.283500
#          // TOP(탑) : 36.768575, 127.283610
#          // 에이플러스 : 36.768475, 127.283650
#          // 엘리트 : 36.768635, 127.283825
#          // 하숙집 :
#          // 처음처럼 가 : 36.768205, 127.283935
#          // 처음처럼 나 : 36.768345, 127.283985
#          // 라미나욧 :
#          // 행복한 원룸 A : 36.770345, 127.287130
#          // 행복한 원룸 B : 36.770345, 127.287010
#          // 이름없는 원룸 : ??


# 정문 원룸
Room.create(:name => 'marker_seonggong', :marker => "36.767679, 127.282300", :title => '성공시대', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_geumsilbil', :marker => "36.767679, 127.282300", :title => '금실빌', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_sinanbil', :marker => "36.768795, 127.282470", :title => '신안빌', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_joenbil_A', :marker => "36.768955, 127.282105", :title => '조은빌 A동', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_joenbil_B', :marker => "36.769040, 127.282360", :title => '조은빌 B동', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_JMbil', :marker => "36.768852, 127.282830", :title => '제이엠빌', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_namhyang', :marker => "36.769255, 127.282330", :title => '남향빌', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_mokjo_01', :marker => "36.769305, 127.282830", :title => '목조주택 1', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_mokjo_02', :marker => "36.769455, 127.282810", :title => '목조주택 2', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_ruby_A', :marker => "36.768444, 127.283358", :title => '루비원룸 A동', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_ruby_B', :marker => "36.768674, 127.283245", :title => '루비원룸 B동', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_goldenbil_A', :marker => "36.768910, 127.283175", :title => '골든빌 A동', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_goldenbil_B', :marker => "36.769020, 127.283135", :title => '골든빌 A동', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_starbil', :marker => "36.769220, 127.283115", :title => '스타빌', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_pinebil', :marker => "36.769228, 127.283313", :title => '파인빌', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_edenbil_A', :marker => "36.769038, 127.283405", :title => '에덴빌 A동', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_edenbil_B', :marker => "36.769090, 127.283580", :title => '에덴빌 B동', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_edenbil_C', :marker => "36.769130, 127.283770", :title => '에덴빌 C동', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_wonroom_A', :marker => "36.768780, 127.283500", :title => '원룸 A', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_top', :marker => "36.768575, 127.283610", :title => 'TOP(탑) 원룸', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_Aplus', :marker => "36.768475, 127.283650", :title => '에이플러스 원룸', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_elite', :marker => "36.768635, 127.283825", :title => '엘리트 원룸', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_likefirst_ga', :marker => "36.768205, 127.283935", :title => '처음처럼 가동', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_likefirst_na', :marker => "36.768345, 127.283985", :title => '처음처럼 나동', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_happy_A', :marker => "36.770345, 127.287130", :title => '행복한원룸 A동', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')
Room.create(:name => 'marker_happy_B', :marker => "36.770345, 127.287010", :title => '행복한원룸 B동', :structure => "9평(방1, 화장실1)", :period => '6', :payment => '200', :fee => '20', :deposit => '30', :phone_num => '010-5353-0189')



Notice.create(:url => '123123', :title => '^^', :post_time => '1010')
Notice.create(:url => '1231231', :title => '^^', :post_time => '1010')
Notice.create(:url => '12312312', :title => '^^', :post_time => '1010')
Notice.create(:url => '1231213133', :title => '^^', :post_time => '1010')
Notice.create(:url => '1231215153', :title => '^^', :post_time => '1010')
Notice.create(:url => '1231264643', :title => '^^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^1^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^2^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^3^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^4^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^5^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^76^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^8^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^9^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^0^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^11^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^^22', :post_time => '1010')
Notice.create(:url => '123123', :title => '^d^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^f^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^a^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^q^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^w^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^e^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^r^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^t^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^y^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^oiu^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^p^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^l^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^k^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^j^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^h^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^g^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^g^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^f^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^f^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^d^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^s^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^a^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^z^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^x^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^vc^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^b^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^n^', :post_time => '1010')
Notice.create(:url => '123123', :title => '^m^', :post_time => '1010')
