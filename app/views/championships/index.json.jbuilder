json.array!(@championships) do |championship|
  json.extract! championship, :id, :name, :start_date, :finish_date, :sport, :user_id
  json.url championship_url(championship, format: :json)
end
