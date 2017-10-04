class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comment = @post.comments
  end

  def show
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    if @comment.save
      redirect_to @post
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    if @comment.update(comment_params)
      redirect_to @post
    else
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:post_id])
    post.comments.destroy(params[:id])
    redirect_to post
  end

  protected
  def comment_params
    params.require(:comment).permit(:name, :body, :email)
  end

end
