module ApplicationHelper
  def sidebar_link(href:, &block)
    render("shared/sidebar_link", href: href, &block)
  end
end
