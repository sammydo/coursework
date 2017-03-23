# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pic1 = Picture.create({ img: 'image1.png', caption: 'First image'})
pic2 = Picture.create({ img: 'image2.png', caption: 'Second image'})
pic3 = Picture.create({ img: 'image3.png', caption: 'Third image'})
pic4 = Picture.create({ img: 'image4.png', caption: 'Fouth image'})

user = User.create({name:"Steve"})
user1 = User.create({name:"Ossy"})
user2 = User.create({name:"Sal"})
user3 = User.create({name:"John"})

comm1 = Comment.create({ body: 'This is my message'})
comm2 = Comment.create({ body: 'haha another message'})
comm3 = Comment.create({ body: 'This is getting boring .message'})
comm4 = Comment.create({ body: 'ok bye'})



user.pictures.push pic1
user1.pictures.push pic2
user2.comments.push comm1
user3.comments.push comm2

user3.pictures.push pic3
user2.pictures.push pic4
user.comments.push comm3
user2.comments.push comm4

comm1.picture = pic1
comm2.picture = pic2
comm3.picture = pic2
comm4.picture = pic3
comm1.save
comm2.save
comm3.save
comm4.save


# likes

user1.liked.push pic1
user.liked.push pic2
user2.liked.push pic3
user3.liked.push pic1

# user1.followers.push user2
# user1.followers.push user3
# user1.followers.push user4





# pic1.comm1
