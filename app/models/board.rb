class Board < ActiveRecord::Base
    has_many :comments
    validates :name, presence: { message: "이름을 입력하세요." }
    validates :title, presence: { message: "제목을 입력하세요." }
    validates :content, presence: { message: "내용을 입력하세요." }
end
