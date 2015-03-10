json.array!(@events) do |event|
  json.extract! event, :id, :eventid, :name, :venue, :schedule, :eventclass, :attendance, :addpoint
  json.url event_url(event, format: :json)
end
