class Post < ApplicationRecord
  # Relations
  belongs_to :user
  belongs_to :parent, class_name: 'Post'
  has_many :posts, foreign_key: :parent_id, dependent: :destroy

  # Scopes
  default_scope -> {order(created_at: 'ASC')}
  scope :parent_posts, -> { where(parent: nil)}

  # Functions
  def get_title
    if is_parent?
      title
    else
      "Re: #{parent.title}"
    end
  end

  def is_parent?
    parent.nil?
  end

  def last_reply_time
    posts.last.try(:created_at) || created_at
  end
end
