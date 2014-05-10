# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# User.create(email: "trinityxmontoya@gmail.com", username: "nahsonchilll", password: "jo", profile_photo: "https://dtpmhvbsmffsz.cloudfront.net/users/2013/08/26/521bd70cc3c915438505b211/s_523e4831c3c9153598028324.jpg", bg_photo: "https://c2.staticflickr.com/4/3657/3655415120_fea787fe34.jpg", gender_id: 2)

category1 = Category.create(name: "Tops", gender_id: gender1.id)
category2 = Category.create(name: "Tops", gender_id: gender2.id)
category3 = Category.create(name: "Skirts", gender_id: gender1.id)
category4 = Category.create(name: "Shorts", gender_id: gender2.id)

# gender1 = Gender.create(name: "Women's")
# gender2 = Gender.create(name: "Men's")
#
# Brand.create(name: "American Apparel")
# Brand.create(name: "Patagonia")
# Brand.create(name: "Levi's")
# Brand.create(name: "Acne")
# Brand.create(name: "Dr.Marten's")
