class MahasiswaResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :username, as: :text, required: true
  field :password, as: :password, required: true
  field :name, as: :text, name: "Nama", placeholder: "Nama", required: true
  field :id_number, as: :text, name: "NIM", placeholder: "NIM", required: true, maxlength: 16
end
