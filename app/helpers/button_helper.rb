module ButtonHelper
  def button_to(text, path, options = {})
    link_to raw(text), path, options.merge!(class: "btn #{options[:class]}")
  end

  def minibutton_to(text, path, options = {})
    button_to text, path, options.merge!(class: "btn-mini #{options[:class]} ")
  end

  def download_button
    icon_tag("cloud-download")
  end

  def info_button
    icon_tag("info-sign")
  end

  def like_button
    icon_tag("thumbs-up")
  end

  def dislike_button
    icon_tag("thumbs-down")
  end

  def delete_button
    icon_tag("trash")
  end

  def edit_button
    icon_tag("edit")
  end

  def account_button
    icon_tag("user")
  end

  def ignore_button
    icon_tag("eye-close")
  end

  def close_button(type)
    content_tag :button, icon_tag("remove-sign"), class: "close", data: dismiss(type)
  end
end

