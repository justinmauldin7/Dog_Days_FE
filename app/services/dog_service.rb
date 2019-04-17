class DogService
  def self.get_all_dogs(user)
    response = Faraday.get "https://dog-days-api.herokuapp.com/api/v1/dogs?user_id=#{user}"
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.create_dog(user, breed, image)
    response = Faraday.post "https://dog-days-api.herokuapp.com/api/v1/dogs?user_id=#{user}&breed=#{breed}&image=#{image}"
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.delete_dog(user, id)
    response = Faraday.delete "https://dog-days-api.herokuapp.com/api/v1/dogs/#{id}?user_id=#{user}"
    JSON.parse(response.body, symbolize_names: true)
  end
end
