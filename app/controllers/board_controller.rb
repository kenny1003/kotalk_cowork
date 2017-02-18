class BoardController < ApplicationController
  def index
    @post = Board.all
  end

  def write_post_view
  end

  def write_post
    new_board = Board.new
    new_board.title = params[:title]
    new_board.content = params[:content]
    new_board.name = params[:name]
    new_board.comment_count = 0;
    new_board.hits = 0
    
    if new_board.save
      redirect_to "/board"
    else
      
      redirect_to :back
      # render :text => new_board.errors.messages -> 이거는 쓰레기
      # js에서 alert처럼 어떻게 할까??
    end
  end

  def view_post
    @post = Board.find(params[:board_id])
  end
  
  def update_view
    @post = Board.find(params[:board_id])
  end

  def update_post
    @post = Board.find(params[:board_id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.name = params[:name]
    @post.hits = 0
    @post.save
    
    post_number = params[:board_id]
    redirect_to "/board/view_post/" + post_number
  end
  
  def destroy_post
    @post = Board.find(params[:board_id])
    @post.destroy
    
    redirect_to "/board"
  end

  def write_comment
    new_comment = Comment.new
    new_comment.content = params[:comment]
    new_comment.board_id = params[:board_id]
    new_comment.nickname = params[:nickname]
    new_comment.password = params[:password]
    
    if new_comment.save
      @post = Board.find(params[:board_id])
      @post.comment_count += 1
      @post. save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  def update_comment
    @comment = Comment.find(params[:board_id])
    @comment.content = params[:comment]
    @comment.board_id = params[:board_id]
    @comment.nickname = params[:nickname]
    
    @post.save
    
    post_number = params[:board_id]
    redirect_to "/board/view_post/" + post_number
  end

  def destroy_comment
    @comment = Comment.find(params[:comment_id])
    @comment.destroy
    
    redirect_to :back 
  end
  
end