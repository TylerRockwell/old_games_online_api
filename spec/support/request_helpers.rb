def json_response
  @json_response ||= begin
    json = JSON.parse(response.body)
    json.is_a?(Hash) ? json.with_indifferent_access : json
  end
end
