module UserResourceFields
  def self.included(base)
    base.field :username, as: :text, required: true
    base.field :password, as: :password
    base.field :name, as: :text, name: "Nama", placeholder: "Nama", required: true
  end
end