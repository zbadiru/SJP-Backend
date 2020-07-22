# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Portfolio.destroy_all
Photoshoot.destroy_all
Image.destroy_all

User.create([
    {
        username: "StonyJohnson",
        password: "12345"
    }
])

Portfolio.create([
    {
        user_id: 1, 
        photoshoot_id: 1
    },
    {
        user_id: 1,
        photoshoot_id: 2
    },
    {
        user_id: 1,
        photoshoot_id: 3
    }
])

Photoshoot.create([
    {
        name: "Augusta",
        portfolio_id: 1
    },
    {
        name: "Blue-Purple_headshot",
        portfolio_id: 1
    },
    {
        name: "Flower-headshot",
        portfolio_id: 1
    }
])


# response = RestClient.get "https://photos.app.goo.gl/joXc6AVSFAHgA3a1A"
# byebug

# json = JSON.parse response.body
# byebug

# if !json.nil?
#     json["data"].map do |image|
#         Image.create(id: "#{image["index"]}")
#     end
# else
#     put "error seeding images"
# end




Image.create([
    {
        image_url: "https://res.cloudinary.com/sjpcreative/image/upload/v1595252285/11th_February_202000971-2_jqi9qr.jpg",
        photoshoot_id: 1
    },
    {
        image_url: "https://res.cloudinary.com/sjpcreative/image/upload/v1595252290/12_rqhuji.jpg",
        photoshoot_id: 1
    },
    {
        image_url: "https://res.cloudinary.com/sjpcreative/image/upload/v1595252376/Hair.mag_obv1mf.jpg",
        photoshoot_id: 2
    },
    {
        image_url: "https://res.cloudinary.com/sjpcreative/image/upload/v1595252761/IMG_8285-2_xub4ta.jpg", 
        photoshoot_id: 2
    },
    {
        image_url: "https://res.cloudinary.com/sjpcreative/image/upload/v1595252603/274A4830.rawjpg_mtdpur.jpg",
        photoshoot_id: 3
    },
    {
        image_url: "https://res-console.cloudinary.com/sjpcreative/thumbnails/v1/image/upload/v1595252710/c2pwLzI3NEE0ODE3LVJlY292ZXJlZF9hemhhNzI=/preview",
        photoshoot_id: 3
    }
])

