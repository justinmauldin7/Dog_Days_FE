class UserService
  def self.find_user(email)
    response = Faraday.get "https://dog-days-api.herokuapp.com/api/v1/users?email=#{email}"
    JSON.parse(response.body, symbolize_names: true)
  end
end
