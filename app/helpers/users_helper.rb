module UsersHelper
  def user_has_posts_or_comments?
    @user.post.nil && @user.comment.nil
  end
end
