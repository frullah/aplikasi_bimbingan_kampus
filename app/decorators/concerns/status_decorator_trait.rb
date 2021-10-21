module StatusDecoratorTrait
  def status
    h.content_tag :div, status_text, class: status_class
  end

  private def status_text
    case model.status.to_sym
    when :pending
      "Menunggu keputusan"
    when :rejected
      "Ditolak"
    else
      "Diterima"
    end
  end

  private def status_class
    case model.status.to_sym
    when :pending
      "text-secondary"
    when :rejected
      "text-danger"
    when :approved
      "text-success"
    end
  end
end