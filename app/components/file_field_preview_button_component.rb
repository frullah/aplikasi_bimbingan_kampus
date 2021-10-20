# frozen_string_literal: true

class FileFieldPreviewButtonComponent < ViewComponent::Base
  def initialize(attachment:)
    @attachment = attachment
  end
end
