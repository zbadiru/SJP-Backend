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
Merchandise.destroy_all

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



Image.create([
    {
        image_url: "https://res-console.cloudinary.com/sjpcreative/thumbnails/v1/image/upload/v1595252376/c2pwL0hhaXIubWFnX29idjFtZg==/preview",
        photoshoot_id: 1
    },
    {
        image_url: "https://res-console.cloudinary.com/sjpcreative/thumbnails/v1/image/upload/v1595252761/c2pwL0lNR184Mjg1LTJfeHViNHRh/preview",
        photoshoot_id: 1
    },
    {
        image_url: "https://res-console.cloudinary.com/sjpcreative/thumbnails/v1/image/upload/v1595252290/c2pwLzEyX3JxaHVqaQ==/preview",
        photoshoot_id: 2
    },
    {
        image_url: "https://res-console.cloudinary.com/sjpcreative/thumbnails/v1/image/upload/v1595252285/c2pwLzExdGhfRmVicnVhcnlfMjAyMDAwOTcxLTJfanFpOXFy/preview", 
        photoshoot_id: 2
    },
    {
        image_url: "https://res-console.cloudinary.com/sjpcreative/thumbnails/v1/image/upload/v1595252603/c2pwLzI3NEE0ODMwLnJhd2pwZ19tdGRwdXI=/preview",
        photoshoot_id: 3
    },
    {
        image_url: "https://res-console.cloudinary.com/sjpcreative/thumbnails/v1/image/upload/v1595252710/c2pwLzI3NEE0ODE3LVJlY292ZXJlZF9hemhhNzI=/preview",
        photoshoot_id: 3
    }
])

Merchandise.create([
    {
        name: "Key Ring",
        img: "https://res-console.cloudinary.com/sjpcreative/thumbnails/v1/image/upload/v1595876981/c2pwIG1lcmNoYW5kaXNlL0tleV9SaW5nc19hbDh3ZGs=/preview",
        price: 3.50,
        inCart: false,
        count: 0,
        total: 0
    },
    {
        name: "Coaster",
        img: "https://res-console.cloudinary.com/sjpcreative/thumbnails/v1/image/upload/v1595877169/c2pwIG1lcmNoYW5kaXNlL0NvYXN0ZXJfcXRvZzYz/preview",
        price: 4.00,
        inCart: false,
        count: 0,
        total: 0
    },
    {
        name: "Acrylice Photo Print 24 x 16",
        img: "https://res-console.cloudinary.com/sjpcreative/thumbnails/v1/image/upload/v1595877321/c2pwIG1lcmNoYW5kaXNlL0FjcnlsaWNlX1Bob3RvX1ByaW50X3JxZWRnNA==/preview",
        price: 150.00,
        inCart: false,
        count: 0,
        total: 0
    },
    {
        name: "Photo Frame 6 x 4",
        img: "https://res-console.cloudinary.com/sjpcreative/thumbnails/v1/image/upload/v1595877563/c2pwIG1lcmNoYW5kaXNlL1Bob3RvX0ZyYW1lX2wwanhmbA==/preview",
        price: 15.00,
        inCart: false,
        count: 0,
        total: 0
    }
]);
