module ApplicationHelper
  def view_title(title = nil)
    title ? "#{ENV["RAILS_TITLE"]} - #{title}" : ENV["RAILS_TITLE"]
  end

  def view_description(description = nil)
    description ? "#{ENV["RAILS_DESCRIPTION"]}\n#{description}" : ENV["RAILS_DESCRIPTION"]
  end

  def view_keywords(keywords = nil)
    keywords ? "#{ENV["RAILS_KEYWORDS"]},#{keywords.join(",")}" : ENV["RAILS_KEYWORDS"]
  end

  def view_author(authors = nil)
    authors ? "#{ENV["RAILS_AUTHORS"]},#{author.join(",")}" : ENV["RAILS_AUTHORS"]
  end

  def view_analytics_account
    ENV['ANALYTICS_KEY']
  end

  def view_analytics_domain
    ENV['ANALYTICS_DOMAIN']
  end

  def view_has_header?
    true
  end

  def view_has_footer?
    true
  end

  def view_full?
    @view_full
  end

  def thumbs(state)
    icon_tag("thumbs-#{state}")
  end

  def icon_tag(icon, options = {})
    raw content_tag :i, nil, options.merge(class: "icon-#{icon} #{options[:class]}")
  end

  def caret_tag
    content_tag(:span, nil, class: "caret")
  end

  def modal_link_to(text, path, options = {})
    link_to raw(text), path, options.merge!(data: { toggle: "modal" })
  end

  def tooltip(title)
    { data: toggle("tooltip"), title: title }
  end

  def toggle(type)
    { toggle: type }
  end

  def dismiss(type)
    { dismiss: type }
  end
end
