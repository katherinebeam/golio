json.array!(@goals) do |goal|
  json.extract! goal, :id, :title, :description, :picture, :location
  json.url goal_url(goal, format: :json)
end
