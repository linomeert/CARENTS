# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "creating interests"

Interest.destroy_all


animals = Interest.create(
    name: "Animals",
    photo: "https://res.cloudinary.com/linomeert/image/upload/v1566288386/Icons%20Carents/trxn6tjgahznzxvpirkp.svg"
)

sport = Interest.create(
    name: "Sport",
    photo: "https://res.cloudinary.com/linomeert/image/upload/v1566288386/Icons%20Carents/qexjnrqlradrvelxolna.svg"
)

reading = Interest.create(
    name: "Reading",
    photo: "https://res.cloudinary.com/linomeert/image/upload/v1566288386/Icons%20Carents/p1qkc7o2e5jhppumq1nh.svg"
)

gaming = Interest.create(
    name: "Gaming",
    photo: "https://res.cloudinary.com/linomeert/image/upload/v1566288386/Icons%20Carents/is1xw0fqw1w9rzbfv7i1.svg"
)

movies = Interest.create(
    name: "Movies",
    photo: "https://res.cloudinary.com/linomeert/image/upload/v1566288386/Icons%20Carents/ajwtrdzks9insdvko01s.svg"
)

music = Interest.create(
    name: "Music",
    photo: "https://res.cloudinary.com/linomeert/image/upload/v1566288388/Icons%20Carents/jsfo0ghuqkh612vudxw6.svg"
)

acting = Interest.create(
    name: "Acting",
    photo: "https://res.cloudinary.com/linomeert/image/upload/v1566288388/Icons%20Carents/xyeyzr5buufh1z4060vx.svg"
)

dancing = Interest.create(
    name: "Dancing",
    photo: "https://res.cloudinary.com/linomeert/image/upload/v1566288389/Icons%20Carents/b4xs3isxdhhlos2c7goc.svg"
)

drawing = Interest.create(
    name: "Drawing",
    photo: "https://res.cloudinary.com/linomeert/image/upload/v1566288388/Icons%20Carents/bkicljhmjn5uganfaj0p.svg"
)

singing = Interest.create(
    name: "Singing",
    photo: "https://res.cloudinary.com/linomeert/image/upload/v1566288386/Icons%20Carents/smlzfe8zhs16mogrli3n.svg"
)

reading.save!
animals.save!
sport.save!
gaming.save!
movies.save!
music.save!
acting.save!
dancing.save!
drawing.save!
singing.save!






