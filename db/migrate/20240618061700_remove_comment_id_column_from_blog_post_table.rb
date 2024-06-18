class RemoveCommentIdColumnFromBlogPostTable < ActiveRecord::Migration[7.1]
  def change
    remove_column :blog_posts, :comment_id, :integer
  end
end
