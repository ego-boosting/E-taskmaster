json.array!(@tasks) do |task|
  json.id task.id
  json.url "/tasks/" + task.id.to_s
  json.title task.title
  json.start task.starts_at
  json.end task.ends_at
end