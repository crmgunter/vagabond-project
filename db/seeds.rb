# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative './post_data.rb'
require_relative './city_data.rb'
require_relative './user_data.rb'

Post.destroy_all
City.destroy_all
User.destroy_all

post_data = get_post_data()
city_data = get_city_data()
user_data = get_user_data()

post_data.each_pair do |city_name, posts|
  city = city_data[city_name]
  current_city = City.create!({
    name:         city[:name],
    image_url:    city[:image_url],
    description:  city[:description],
    raitings: city[:raitings]

  })
  post_data.each_pair do |user_name, posts|
  user = user_data[user_name]
  current_user = User.create!({
    name: user[:name],
    image_url: user[:image_url],
    about_section: user[:about_section],
    email: user[:email],
    password: user[:password],
    current_city: user[:current_city]
    })

  posts.each do |post|
    Post.create!({
      title:        post[:title],
      description:        post[:description],
      image_url:  post[:image_url],
      city:       current_city,
      user:   current_user
    })
  end
end
end
