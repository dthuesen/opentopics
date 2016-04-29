json.array!(@open_topics) do |open_topic|
  json.extract! open_topic, :id, :shortlist, :number, :summary, :description, :option, :component, :category, :prio, :responsible, :state, :costmodel, :affects_version, :issue_ticket, :ticket_text, :notes, :in_sprint
  json.url open_topic_url(open_topic, format: :json)
end
