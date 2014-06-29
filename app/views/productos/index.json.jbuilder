json.array!(@productos) do |producto|
  json.extract! producto, :id, :productoName, :descripcion
  json.url producto_url(producto, format: :json)
end
