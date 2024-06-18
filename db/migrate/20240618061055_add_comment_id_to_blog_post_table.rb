class AddCommentIdToBlogPostTable < ActiveRecord::Migration[7.1]
  def change
    add_column :blog_posts, :comment_id, :integer
  end
end
