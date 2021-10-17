class CustomBootstrapFormBuilder < BootstrapForm::FormBuilder
  def file_field_with_preview(attribute, **options)
    attachment = object.send(attribute)
    file_field(attribute, **options, help: file_preview_link(attachment))
  end

  private def file_preview_link(attachment)
    if attachment.attached?
      @template.render(FileFieldPreviewButtonComponent.new(attachment: attachment))
    end
  end
end
