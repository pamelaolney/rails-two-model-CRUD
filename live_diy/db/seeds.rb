# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Project.destroy_all

birthday = Category.create(
  name: "Birthdays",
   image_url: "http://photo.elsoar.com/wp-content/images/Beautiful-birthday-candles.jpg"
  )

  cake = Project.create(
    name: "Birthday Fun Shaped Cake Candles",
     image_url: "https://2.bp.blogspot.com/-gqKX34yhKL8/V5Vq0pohyHI/AAAAAAAAIPU/vjWCQpj7BE8mUDXYHtaoUH6ow9qjvUPswCEw/s1600/DIYBirthdayCandles-5.jpg",
     time_to_completion: "30min",
     instructions: "First buy products.  Second, make the candle!",
     category: birthday
   )
   skirt = Project.create(
     name: "Tulle Skirt",
      image_url: "http://1.bp.blogspot.com/-OAd3XxNC3Fk/UzXmpa-mfiI/AAAAAAAAHMI/JXKEP-4QCxI/s1600/FULL_7.jpg",
      time_to_completion: "1hr",
      instructions: "Get some materials.  Sew the skirt!",
      category: birthday

    )
place = Category.create(
  name: "Apartment Decor",
    image_url: "http://www.collectivefield.com/wp-content/uploads/2016/04/astounding-diy-apartment-living-room-ideas-to-inspire-your-living-room-design.jpg"

  )
footwear = Category.create(
  name: "Footwear",
    image_url: "https://s-media-cache-ak0.pinimg.com/736x/7c/55/73/7c5573b29faacb46147d0ce1aa426d83.jpg"

  )
