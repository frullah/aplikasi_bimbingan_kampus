module RevisableRegistration
  def self.included(base)
    base.enum status: [:pending, :rejected, :approved]
    base.has_rich_text :revision_message
    base.has_one_attached :official_memo
  end
end
