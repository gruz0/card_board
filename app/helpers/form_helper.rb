module FormHelper
  def setup_post(post)
    post.video ||= Video.new
    post
  end
end
