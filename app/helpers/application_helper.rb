module ApplicationHelper
  def navigation_at()
    render partial: "navbar/navbar"
  end

  def mover_at()
    render partial: "shared/top"
  end

  def section_at()
    render partial: "pages/sections"
  end

  def slider_at()
    render partial: "pages/slider"
  end

  def leftbar_at()
    render partial: "navbar/leftbar"
  end

end
