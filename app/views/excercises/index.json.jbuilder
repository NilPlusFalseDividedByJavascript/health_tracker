json.array!(@excercises) do |excercise|
  json.extract! excercise, :id, :cal_burn, :burn_date
  json.url excercise_url(excercise, format: :json)
end
