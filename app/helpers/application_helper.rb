module ApplicationHelper
  def sidebar_link(href:, &block)
    render("shared/sidebar_link", href: href, &block)
  end

  def bootstrap_form_with(**options)
    options[:builder] = CustomBootstrapFormBuilder
    form_with(**options) do |f|
      yield(f)
    end
  end
end
