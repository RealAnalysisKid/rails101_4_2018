class PostsController < ApplicationController
  def new
    @group = Group.find(params[:group_id])
    @post = Post.new(post_params)
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
