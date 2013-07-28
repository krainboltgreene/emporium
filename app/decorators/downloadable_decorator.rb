class DownloadableDecorator < Draper::Decorator
  delegate_all

  def liked_style
    "btn-success" if h.current_account.likes?(source)
  end

  def disliked_style
    "btn-danger" if h.current_account.dislikes?(source)
  end

  def bookmarked_style
    "btn-info" if h.current_account.bookmarks?(source)
  end

  def primary_image
    images.first
  end

  def images
    ImagesNull.new(source.images)
  end

  def short(limit)
    h.raw Markdowner.new(source.description.split("\n").first.truncate(limit)).render!
  end

  def description
    h.raw Markdowner.new(source.description || "").render!
  end

  def guide
    h.raw Markdowner.new(source.guide || "").render!
  end

  def changelog
    h.raw Markdowner.new(source.changelog || "").render!
  end

  def license
    h.raw Markdowner.new(source.license || "").render!
  end

  def license_name
    if license.present?
      source.license.split("\n").first
    else
      "No"
    end
  end

  def url(action, member = true)
    { controller: controller, action: action }.tap { |h| h.merge!(id: id) if member}
  end

  def controller
    type.downcase.pluralize
  end
end
