module AvoUserResourceFields
  def self.included(base)
    base.field :username, as: :text, required: true
    base.field :password, as: :password
    base.field :name, as: :text, name: "Nama", placeholder: "Nama", required: true
    base.field :email, as: :text, type: "email", name: "Email", placeholder: "Email"
    base.field :phone_number, as: :text, name: "Nomor Telepon", placeholder: "Nomor Telepon"
  end
end
