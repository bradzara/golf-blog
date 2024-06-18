class AddBlogPostIdColumnToCommentTable < ActiveRecord::Migration[7.1]
  def change
    add_column :comments, :blog_post_id, :integer
  end
end
