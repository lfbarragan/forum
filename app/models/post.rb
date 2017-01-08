class Post < ApplicationRecord
  # Relations
  belongs_to :user
  belongs_to :parent, class_name: 'Post'
  has_many :posts, foreign_key: :parent_id
  # Scopes
  default_scope -> {order(created_at: 'ASC')}
  scope :parent_posts, -> { where(parent: nil)}
  # functions
  def get_title
    if parent
      "Re: #{parent.title}"
    else
      title
    end
  end
end
