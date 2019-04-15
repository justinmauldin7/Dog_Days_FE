class DogService
  def self.get_all_dogs
    response = Faraday.get 'https://dog-days-api.herokuapp.com/api/v1/dogs.json'
    JSON.parse(response.body, symbolize_names: true)
  end
end
