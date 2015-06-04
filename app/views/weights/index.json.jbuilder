json.array!(@weights) do |weight|
  json.extract! weight, :id, :lbs, :weigh_date
  json.url weight_url(weight, format: :json)
end
