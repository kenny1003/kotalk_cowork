class AddFeildsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first, :string



    add_column :users, :like_number, :integer #좋아하는 숫자
    add_column :users, :nickname, :string #별명

    #추가하고 싶은 column은 이 아래로 추가 후 rake db:migrate 명령 실행
    #그리고 'registrations_controller.rb' 파일에서 추가한 column 이름 추가 할 것
    #마지막으로 view/devise 파일들을 수정하면 됨





  end
end
