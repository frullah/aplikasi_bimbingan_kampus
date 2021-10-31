class PostResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :title, as: :text, name: "Judul", placeholder: "Judul"
  field :content, as: :trix, name: "Konten", placeholder: "Konten"
end
