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

  def nosubmit_bootstrap_form_with(**options, &block)
    options[:html] ||= {}
    options[:html][:onsubmit] = "return false"
    options[:url] = ""
    bootstrap_form_with(**options, &block)
  end

  def bootstrap_link_to(*args, **options, &block)
    link_to(
      *args, 
      {
        **options,
        class: "btn btn-primary"
      }, 
      &block
    )
  end
end
