class EssayProposalDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def status
    h.content_tag :div, model.status, class: status_class
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
