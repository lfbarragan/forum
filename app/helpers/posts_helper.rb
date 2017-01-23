module PostsHelper

  def background_color_class(index)
    %w(bg-success bg-info bg-warning)[index%3]
  end
end
