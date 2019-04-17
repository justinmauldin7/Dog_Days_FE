class SearchService
  def self.dog_search(breed)
    response = Faraday.get "https://dog.ceo/api/breed/#{breed}/images/random/6.json"
    JSON.parse(response.body, symbolize_names: true)[:message]
  end
end
