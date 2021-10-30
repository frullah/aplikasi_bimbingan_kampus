class DosenResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id

  include AvoUserResourceFields
  field :id_number, as: :text, name: "NIDN", placeholder: "NIDN", required: true, maxlength: 16

  def plural_name
    "Dosen"
  end
end
