class MahasiswaResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :id_number, as: :text, name: "NIM", placeholder: "NIM", required: true, maxlength: 16
  include AvoUserResourceFields

  def plural_name
    "Mahasiswa"
  end
end
