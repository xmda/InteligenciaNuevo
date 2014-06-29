json.array!(@centro_atencions) do |centro_atencion|
  json.extract! centro_atencion, :id, :categoria, :servicio
  json.url centro_atencion_url(centro_atencion, format: :json)
end
