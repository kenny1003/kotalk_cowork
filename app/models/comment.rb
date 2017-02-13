class Comment < ActiveRecord::Base
    belongs_to :board
    validates :nickname, presence: { message: "닉네임을 입력하세요." }
    validates :password, presence: { message: "비밀번호를 입력하세요." }
    validates :content, presence: { message: "댓글내용을 입력하세요." }
    
end
