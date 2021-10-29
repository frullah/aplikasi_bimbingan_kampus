class CustomBootstrapFormBuilder < BootstrapForm::FormBuilder
  def file_field_with_preview(attribute, **options)
    attachment = object.send(attribute)
    file_field(attribute, **options, help: file_preview_link(attachment))
  end

  def file_preview(attribute, **options)
    attachment = object.send(attribute)
    content_tag(:div, class: "mb-3") do
      label(attribute, class: "d-block") << file_preview_link(attachment)
    end
  end

  private def file_preview_link(attachment)
    if attachment.attached?
      @template.render(FileFieldPreviewButtonComponent.new(attachment: attachment))
    else
      @template.content_tag :div, "Belum ada file yang tersedia", class: "fw-bold"
    end
  end
end
