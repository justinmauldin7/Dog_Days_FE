class DogService
  def self.get_all_dogs
    response = Faraday.get 'https://dog-days-api.herokuapp.com/api/v1/dogs.json'
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.create_dog(breed, image)
    response = Faraday.post "https://dog-days-api.herokuapp.com/api/v1/dogs?breed=#{breed}&image=#{image}"
    JSON.parse(response.body, symbolize_names: true)
  end
end
