json.array!(@steps) do |step|
  json.extract! step, :id, :steps_taken, :step_date
  json.url step_url(step, format: :json)
end
