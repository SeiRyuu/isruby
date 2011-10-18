module ApplicationHelper

  def title
    base_title = "MemoSmart "
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    image_tag("logo.png", :alt => "MemoSmart", :class => "round")

  end

end
