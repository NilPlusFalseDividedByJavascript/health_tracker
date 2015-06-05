json.array!(@weights) do |potato|
  json.extract! potato, :id, :weight, :weigh_date
  json.url weight_url(potato, format: :json)
end
